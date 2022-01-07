; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_recycle_rx_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_recycle_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_fl = type { i64, i32, i64, i32, i32, i32*, %struct.rx_desc* }
%struct.rx_desc = type { i8*, i8*, i32, i32 }

@A_SG_KDOORBELL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sge_fl*, i32)* @recycle_rx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recycle_rx_buf(i32* %0, %struct.sge_fl* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sge_fl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rx_desc*, align 8
  %8 = alloca %struct.rx_desc*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %10 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %9, i32 0, i32 6
  %11 = load %struct.rx_desc*, %struct.rx_desc** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %11, i64 %13
  store %struct.rx_desc* %14, %struct.rx_desc** %7, align 8
  %15 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %16 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %15, i32 0, i32 6
  %17 = load %struct.rx_desc*, %struct.rx_desc** %16, align 8
  %18 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %19 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %17, i64 %20
  store %struct.rx_desc* %21, %struct.rx_desc** %8, align 8
  %22 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %23 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %30 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %33 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %28, i32* %35, align 4
  %36 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %37 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %40 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rx_desc*, %struct.rx_desc** %7, align 8
  %42 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %45 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = call i32 (...) @wmb()
  %47 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %48 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @V_FLD_GEN1(i32 %49)
  %51 = call i8* @htobe32(i32 %50)
  %52 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %53 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %55 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @V_FLD_GEN2(i32 %56)
  %58 = call i8* @htobe32(i32 %57)
  %59 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %60 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %62 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %66 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %70 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %3
  %74 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %75 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %77 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = xor i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %73, %3
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* @A_SG_KDOORBELL, align 4
  %83 = load %struct.sge_fl*, %struct.sge_fl** %5, align 8
  %84 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @V_EGRCNTX(i32 %85)
  %87 = call i32 @t3_write_reg(i32* %81, i32 %82, i32 %86)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @V_FLD_GEN1(i32) #1

declare dso_local i32 @V_FLD_GEN2(i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_EGRCNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
