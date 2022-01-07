; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_cleansav.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_cleansav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 (%struct.secasvar*)* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@M_IPSEC_MISC = common dso_local global i32 0, align 4
@SADB_X_EXT_F_CLONED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.secasvar*)* @key_cleansav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_cleansav(%struct.secasvar* %0) #0 {
  %2 = alloca %struct.secasvar*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %2, align 8
  %3 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %4 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %3, i32 0, i32 7
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %9 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %8, i32 0, i32 7
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = load i32, i32* @M_IPSEC_MISC, align 4
  %12 = call i32 @free(%struct.TYPE_6__* %10, i32 %11)
  %13 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %14 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %13, i32 0, i32 7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %17 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SADB_X_EXT_F_CLONED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %181

23:                                               ; preds = %15
  %24 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %25 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %24, i32 0, i32 6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %30 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %29, i32 0, i32 6
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.secasvar*)*, i32 (%struct.secasvar*)** %32, align 8
  %34 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %35 = call i32 %33(%struct.secasvar* %34)
  %36 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %37 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %36, i32 0, i32 6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %37, align 8
  br label %71

38:                                               ; preds = %23
  %39 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %40 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %39, i32 0, i32 5
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %45 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %50 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %49, i32 0, i32 5
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i32 @_KEYLEN(%struct.TYPE_6__* %51)
  %53 = call i32 @bzero(%struct.TYPE_6__* %48, i32 %52)
  br label %54

54:                                               ; preds = %43, %38
  %55 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %56 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %55, i32 0, i32 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %61 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %60, i32 0, i32 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %66 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %65, i32 0, i32 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = call i32 @_KEYLEN(%struct.TYPE_6__* %67)
  %69 = call i32 @bzero(%struct.TYPE_6__* %64, i32 %68)
  br label %70

70:                                               ; preds = %59, %54
  br label %71

71:                                               ; preds = %70, %28
  %72 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %73 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %72, i32 0, i32 5
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %78 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %77, i32 0, i32 5
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = icmp ne %struct.TYPE_6__* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %85 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %84, i32 0, i32 5
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* @M_IPSEC_MISC, align 4
  %90 = call i32 @free(%struct.TYPE_6__* %88, i32 %89)
  br label %91

91:                                               ; preds = %83, %76
  %92 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %93 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %92, i32 0, i32 5
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* @M_IPSEC_MISC, align 4
  %96 = call i32 @free(%struct.TYPE_6__* %94, i32 %95)
  %97 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %98 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %97, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %98, align 8
  br label %99

99:                                               ; preds = %91, %71
  %100 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %101 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %100, i32 0, i32 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = icmp ne %struct.TYPE_6__* %102, null
  br i1 %103, label %104, label %127

104:                                              ; preds = %99
  %105 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %106 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %105, i32 0, i32 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %113 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %112, i32 0, i32 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i32, i32* @M_IPSEC_MISC, align 4
  %118 = call i32 @free(%struct.TYPE_6__* %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %104
  %120 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %121 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %120, i32 0, i32 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* @M_IPSEC_MISC, align 4
  %124 = call i32 @free(%struct.TYPE_6__* %122, i32 %123)
  %125 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %126 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %125, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %126, align 8
  br label %127

127:                                              ; preds = %119, %99
  %128 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %129 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %128, i32 0, i32 3
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = icmp ne %struct.TYPE_6__* %130, null
  br i1 %131, label %132, label %155

132:                                              ; preds = %127
  %133 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %134 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %133, i32 0, i32 3
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = icmp ne %struct.TYPE_6__* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %141 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i32, i32* @M_IPSEC_MISC, align 4
  %146 = call i32 @free(%struct.TYPE_6__* %144, i32 %145)
  br label %147

147:                                              ; preds = %139, %132
  %148 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %149 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %148, i32 0, i32 3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* @M_IPSEC_MISC, align 4
  %152 = call i32 @free(%struct.TYPE_6__* %150, i32 %151)
  %153 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %154 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %153, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %154, align 8
  br label %155

155:                                              ; preds = %147, %127
  %156 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %157 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %156, i32 0, i32 2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = icmp ne %struct.TYPE_6__* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %162 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %161, i32 0, i32 2
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* @M_IPSEC_MISC, align 4
  %165 = call i32 @free(%struct.TYPE_6__* %163, i32 %164)
  %166 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %167 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %166, i32 0, i32 2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %167, align 8
  br label %168

168:                                              ; preds = %160, %155
  %169 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %170 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = icmp ne %struct.TYPE_6__* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %175 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %174, i32 0, i32 1
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i32, i32* @M_IPSEC_MISC, align 4
  %178 = call i32 @free(%struct.TYPE_6__* %176, i32 %177)
  %179 = load %struct.secasvar*, %struct.secasvar** %2, align 8
  %180 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %179, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %180, align 8
  br label %181

181:                                              ; preds = %22, %173, %168
  ret void
}

declare dso_local i32 @free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @_KEYLEN(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
