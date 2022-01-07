; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_int_rman_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_int_rman_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rman = type { i32 }
%struct.resource_i = type { i32, i64, i64, i32*, %struct.resource_i* }

@RF_ACTIVE = common dso_local global i32 0, align 4
@r_sharelink = common dso_local global i32 0, align 4
@RF_FIRSTSHARE = common dso_local global i32 0, align 4
@r_link = common dso_local global i32 0, align 4
@M_RMAN = common dso_local global i32 0, align 4
@resource_head = common dso_local global i32 0, align 4
@RF_ALLOCATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rman*, %struct.resource_i*)* @int_rman_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_rman_release_resource(%struct.rman* %0, %struct.resource_i* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rman*, align 8
  %5 = alloca %struct.resource_i*, align 8
  %6 = alloca %struct.resource_i*, align 8
  %7 = alloca %struct.resource_i*, align 8
  store %struct.rman* %0, %struct.rman** %4, align 8
  store %struct.resource_i* %1, %struct.resource_i** %5, align 8
  %8 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %9 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RF_ACTIVE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %18 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %23 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %22, i32 0, i32 4
  %24 = load %struct.resource_i*, %struct.resource_i** %23, align 8
  %25 = icmp ne %struct.resource_i* %24, null
  br i1 %25, label %26, label %75

26:                                               ; preds = %21
  %27 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %28 = load i32, i32* @r_sharelink, align 4
  %29 = call i32 @LIST_REMOVE(%struct.resource_i* %27, i32 %28)
  %30 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %31 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %30, i32 0, i32 4
  %32 = load %struct.resource_i*, %struct.resource_i** %31, align 8
  %33 = call %struct.resource_i* @LIST_FIRST(%struct.resource_i* %32)
  store %struct.resource_i* %33, %struct.resource_i** %6, align 8
  %34 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %35 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RF_FIRSTSHARE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %26
  %41 = load i32, i32* @RF_FIRSTSHARE, align 4
  %42 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %43 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %47 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %48 = load i32, i32* @r_link, align 4
  %49 = call i32 @TAILQ_INSERT_BEFORE(%struct.resource_i* %46, %struct.resource_i* %47, i32 %48)
  %50 = load %struct.rman*, %struct.rman** %4, align 8
  %51 = getelementptr inbounds %struct.rman, %struct.rman* %50, i32 0, i32 0
  %52 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %53 = load i32, i32* @r_link, align 4
  %54 = call i32 @TAILQ_REMOVE(i32* %51, %struct.resource_i* %52, i32 %53)
  br label %55

55:                                               ; preds = %40, %26
  %56 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %57 = load i32, i32* @r_sharelink, align 4
  %58 = call i32* @LIST_NEXT(%struct.resource_i* %56, i32 %57)
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %62 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %61, i32 0, i32 4
  %63 = load %struct.resource_i*, %struct.resource_i** %62, align 8
  %64 = load i32, i32* @M_RMAN, align 4
  %65 = call i32 @free(%struct.resource_i* %63, i32 %64)
  %66 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %67 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %66, i32 0, i32 4
  store %struct.resource_i* null, %struct.resource_i** %67, align 8
  %68 = load i32, i32* @RF_FIRSTSHARE, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %71 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %60, %55
  br label %187

75:                                               ; preds = %21
  %76 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %77 = load i32, i32* @resource_head, align 4
  %78 = load i32, i32* @r_link, align 4
  %79 = call %struct.resource_i* @TAILQ_PREV(%struct.resource_i* %76, i32 %77, i32 %78)
  store %struct.resource_i* %79, %struct.resource_i** %6, align 8
  %80 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %81 = icmp ne %struct.resource_i* %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %84 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RF_ALLOCATED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %82
  %90 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %91 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  %94 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %95 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89, %82
  store %struct.resource_i* null, %struct.resource_i** %6, align 8
  br label %99

99:                                               ; preds = %98, %89, %75
  %100 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %101 = load i32, i32* @r_link, align 4
  %102 = call %struct.resource_i* @TAILQ_NEXT(%struct.resource_i* %100, i32 %101)
  store %struct.resource_i* %102, %struct.resource_i** %7, align 8
  %103 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  %104 = icmp ne %struct.resource_i* %103, null
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  %107 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @RF_ALLOCATED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %105
  %113 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %114 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  %117 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  %118 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %112, %105
  store %struct.resource_i* null, %struct.resource_i** %7, align 8
  br label %122

122:                                              ; preds = %121, %112, %99
  %123 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %124 = icmp ne %struct.resource_i* %123, null
  br i1 %124, label %125, label %147

125:                                              ; preds = %122
  %126 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  %127 = icmp ne %struct.resource_i* %126, null
  br i1 %127, label %128, label %147

128:                                              ; preds = %125
  %129 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  %130 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %133 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.rman*, %struct.rman** %4, align 8
  %135 = getelementptr inbounds %struct.rman, %struct.rman* %134, i32 0, i32 0
  %136 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %137 = load i32, i32* @r_link, align 4
  %138 = call i32 @TAILQ_REMOVE(i32* %135, %struct.resource_i* %136, i32 %137)
  %139 = load %struct.rman*, %struct.rman** %4, align 8
  %140 = getelementptr inbounds %struct.rman, %struct.rman* %139, i32 0, i32 0
  %141 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  %142 = load i32, i32* @r_link, align 4
  %143 = call i32 @TAILQ_REMOVE(i32* %140, %struct.resource_i* %141, i32 %142)
  %144 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  %145 = load i32, i32* @M_RMAN, align 4
  %146 = call i32 @free(%struct.resource_i* %144, i32 %145)
  br label %186

147:                                              ; preds = %125, %122
  %148 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %149 = icmp ne %struct.resource_i* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %152 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.resource_i*, %struct.resource_i** %6, align 8
  %155 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load %struct.rman*, %struct.rman** %4, align 8
  %157 = getelementptr inbounds %struct.rman, %struct.rman* %156, i32 0, i32 0
  %158 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %159 = load i32, i32* @r_link, align 4
  %160 = call i32 @TAILQ_REMOVE(i32* %157, %struct.resource_i* %158, i32 %159)
  br label %185

161:                                              ; preds = %147
  %162 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  %163 = icmp ne %struct.resource_i* %162, null
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %166 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.resource_i*, %struct.resource_i** %7, align 8
  %169 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load %struct.rman*, %struct.rman** %4, align 8
  %171 = getelementptr inbounds %struct.rman, %struct.rman* %170, i32 0, i32 0
  %172 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %173 = load i32, i32* @r_link, align 4
  %174 = call i32 @TAILQ_REMOVE(i32* %171, %struct.resource_i* %172, i32 %173)
  br label %184

175:                                              ; preds = %161
  %176 = load i32, i32* @RF_ALLOCATED, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %179 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %183 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %182, i32 0, i32 3
  store i32* null, i32** %183, align 8
  store i32 0, i32* %3, align 4
  br label %191

184:                                              ; preds = %164
  br label %185

185:                                              ; preds = %184, %150
  br label %186

186:                                              ; preds = %185, %128
  br label %187

187:                                              ; preds = %186, %74
  %188 = load %struct.resource_i*, %struct.resource_i** %5, align 8
  %189 = load i32, i32* @M_RMAN, align 4
  %190 = call i32 @free(%struct.resource_i* %188, i32 %189)
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %187, %175
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @LIST_REMOVE(%struct.resource_i*, i32) #1

declare dso_local %struct.resource_i* @LIST_FIRST(%struct.resource_i*) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.resource_i*, %struct.resource_i*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.resource_i*, i32) #1

declare dso_local i32* @LIST_NEXT(%struct.resource_i*, i32) #1

declare dso_local i32 @free(%struct.resource_i*, i32) #1

declare dso_local %struct.resource_i* @TAILQ_PREV(%struct.resource_i*, i32, i32) #1

declare dso_local %struct.resource_i* @TAILQ_NEXT(%struct.resource_i*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
