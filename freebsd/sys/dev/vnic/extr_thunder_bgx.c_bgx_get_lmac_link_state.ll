; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_lmac_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_get_lmac_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgx = type { %struct.lmac* }
%struct.lmac = type { i32, i32, i32 }
%struct.bgx_link_status = type { i32, i32, i32 }

@bgx_vnic = common dso_local global %struct.bgx** null, align 8
@MAX_BGX_PER_CN88XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bgx_get_lmac_link_state(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bgx_link_status*, align 8
  %10 = alloca %struct.bgx*, align 8
  %11 = alloca %struct.lmac*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.bgx_link_status*
  store %struct.bgx_link_status* %13, %struct.bgx_link_status** %9, align 8
  %14 = load %struct.bgx**, %struct.bgx*** @bgx_vnic, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAX_BGX_PER_CN88XX, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bgx*, %struct.bgx** %14, i64 %20
  %22 = load %struct.bgx*, %struct.bgx** %21, align 8
  store %struct.bgx* %22, %struct.bgx** %10, align 8
  %23 = load %struct.bgx*, %struct.bgx** %10, align 8
  %24 = icmp eq %struct.bgx* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %48

26:                                               ; preds = %4
  %27 = load %struct.bgx*, %struct.bgx** %10, align 8
  %28 = getelementptr inbounds %struct.bgx, %struct.bgx* %27, i32 0, i32 0
  %29 = load %struct.lmac*, %struct.lmac** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.lmac, %struct.lmac* %29, i64 %31
  store %struct.lmac* %32, %struct.lmac** %11, align 8
  %33 = load %struct.lmac*, %struct.lmac** %11, align 8
  %34 = getelementptr inbounds %struct.lmac, %struct.lmac* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bgx_link_status*, %struct.bgx_link_status** %9, align 8
  %37 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.lmac*, %struct.lmac** %11, align 8
  %39 = getelementptr inbounds %struct.lmac, %struct.lmac* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bgx_link_status*, %struct.bgx_link_status** %9, align 8
  %42 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.lmac*, %struct.lmac** %11, align 8
  %44 = getelementptr inbounds %struct.lmac, %struct.lmac* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bgx_link_status*, %struct.bgx_link_status** %9, align 8
  %47 = getelementptr inbounds %struct.bgx_link_status, %struct.bgx_link_status* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %26, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
