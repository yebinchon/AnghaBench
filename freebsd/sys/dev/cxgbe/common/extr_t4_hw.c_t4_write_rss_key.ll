; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_write_rss_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_write_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_TP_RSS_CONFIG_VRT = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@F_KEYEXTEND = common dso_local global i32 0, align 4
@A_TP_RSS_SECRET_KEY0 = common dso_local global i32 0, align 4
@F_KEYWREN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_write_rss_key(%struct.adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 16, i32* %9, align 4
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = load i32, i32* @A_TP_RSS_CONFIG_VRT, align 4
  %13 = call i32 @t4_read_reg(%struct.adapter* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.adapter*, %struct.adapter** %5, align 8
  %15 = call i64 @chip_id(%struct.adapter* %14)
  %16 = load i64, i64* @CHELSIO_T5, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @F_KEYEXTEND, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @G_KEYMODE(i32 %24)
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 32, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %23, %18, %4
  %29 = load %struct.adapter*, %struct.adapter** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @A_TP_RSS_SECRET_KEY0, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @t4_tp_pio_write(%struct.adapter* %29, i32* %30, i32 10, i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 16
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.adapter*, %struct.adapter** %5, align 8
  %45 = load i32, i32* @A_TP_RSS_CONFIG_VRT, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 4
  %49 = call i32 @V_KEYWRADDRX(i32 %48)
  %50 = or i32 %46, %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @V_T6_VFWRADDR(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* @F_KEYWREN, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @t4_write_reg(%struct.adapter* %44, i32 %45, i32 %55)
  br label %67

57:                                               ; preds = %40
  %58 = load %struct.adapter*, %struct.adapter** %5, align 8
  %59 = load i32, i32* @A_TP_RSS_CONFIG_VRT, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @V_KEYWRADDR(i32 %61)
  %63 = or i32 %60, %62
  %64 = load i32, i32* @F_KEYWREN, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @t4_write_reg(%struct.adapter* %58, i32 %59, i32 %65)
  br label %67

67:                                               ; preds = %57, %43
  br label %68

68:                                               ; preds = %67, %36, %28
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @chip_id(%struct.adapter*) #1

declare dso_local i32 @G_KEYMODE(i32) #1

declare dso_local i32 @t4_tp_pio_write(%struct.adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_KEYWRADDRX(i32) #1

declare dso_local i32 @V_T6_VFWRADDR(i32) #1

declare dso_local i32 @V_KEYWRADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
