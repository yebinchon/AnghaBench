; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_check_quirks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_pnp.c_pnp_check_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_quirk = type { i64, i64, i32, i32, i32 }
%struct.isa_config = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@pnp_quirks = common dso_local global %struct.pnp_quirk* null, align 8
@PNP_SET_LDN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnp_check_quirks(i64 %0, i64 %1, i32 %2, %struct.isa_config* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isa_config*, align 8
  %9 = alloca %struct.pnp_quirk*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.isa_config* %3, %struct.isa_config** %8, align 8
  %10 = load %struct.pnp_quirk*, %struct.pnp_quirk** @pnp_quirks, align 8
  %11 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %10, i64 0
  store %struct.pnp_quirk* %11, %struct.pnp_quirk** %9, align 8
  br label %12

12:                                               ; preds = %166, %4
  %13 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %14 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %169

17:                                               ; preds = %12
  %18 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %19 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %165

23:                                               ; preds = %17
  %24 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %25 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %30 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %165

34:                                               ; preds = %28, %23
  %35 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %36 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %164 [
    i32 128, label %38
    i32 129, label %49
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @PNP_SET_LDN, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @pnp_write(i32 %39, i32 %40)
  %42 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %43 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %46 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pnp_write(i32 %44, i32 %47)
  br label %164

49:                                               ; preds = %34
  %50 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %51 = icmp eq %struct.isa_config* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %164

53:                                               ; preds = %49
  %54 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %55 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %108

58:                                               ; preds = %53
  %59 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %60 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %64 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %67 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %70
  %72 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %73 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 0
  %76 = bitcast %struct.TYPE_2__* %71 to i8*
  %77 = bitcast %struct.TYPE_2__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  %78 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %79 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %82 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %85 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %80
  store i32 %92, i32* %90, align 4
  %93 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %94 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %97 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %100 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %95
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %58, %53
  %109 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %110 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %163

113:                                              ; preds = %108
  %114 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %115 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %119 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %122 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %125
  %127 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %128 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 0
  %131 = bitcast %struct.TYPE_2__* %126 to i8*
  %132 = bitcast %struct.TYPE_2__* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 8, i1 false)
  %133 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %134 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %137 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %140 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %135
  store i32 %147, i32* %145, align 4
  %148 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %149 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %152 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load %struct.isa_config*, %struct.isa_config** %8, align 8
  %155 = getelementptr inbounds %struct.isa_config, %struct.isa_config* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %150
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %113, %108
  br label %164

164:                                              ; preds = %34, %163, %52, %38
  br label %165

165:                                              ; preds = %164, %28, %17
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.pnp_quirk*, %struct.pnp_quirk** %9, align 8
  %168 = getelementptr inbounds %struct.pnp_quirk, %struct.pnp_quirk* %167, i32 1
  store %struct.pnp_quirk* %168, %struct.pnp_quirk** %9, align 8
  br label %12

169:                                              ; preds = %12
  ret void
}

declare dso_local i32 @pnp_write(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
