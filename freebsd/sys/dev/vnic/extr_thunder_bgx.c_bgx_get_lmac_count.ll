; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_lmac_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_lmac_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { i32 }

@bgx_vnic = common dso_local global %struct.bgx** null, align 8
@MAX_BGX_PER_CN88XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgx_get_lmac_count(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bgx*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX_BGX_PER_CN88XX, align 4
  %10 = mul nsw i32 %8, %9
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.bgx*, %struct.bgx** %7, i64 %13
  %15 = load %struct.bgx*, %struct.bgx** %14, align 8
  store %struct.bgx* %15, %struct.bgx** %6, align 8
  %16 = load %struct.bgx*, %struct.bgx** %6, align 8
  %17 = icmp ne %struct.bgx* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.bgx*, %struct.bgx** %6, align 8
  %20 = getelementptr inbounds %struct.bgx, %struct.bgx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
