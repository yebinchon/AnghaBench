; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mc5.c_t3_read_mc5_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mc5.c_t3_read_mc5_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc5 = type { i64, i32* }

@IDT75P52100 = common dso_local global i64 0, align 8
@IDT_CMD_READ = common dso_local global i32 0, align 4
@IDT75N43102 = common dso_local global i64 0, align 8
@IDT4_CMD_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@A_MC5_DB_DBGI_REQ_ADDR0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_read_mc5_range(%struct.mc5* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mc5*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.mc5* %0, %struct.mc5** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.mc5*, %struct.mc5** %6, align 8
  %14 = getelementptr inbounds %struct.mc5, %struct.mc5* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %12, align 8
  %16 = load %struct.mc5*, %struct.mc5** %6, align 8
  %17 = getelementptr inbounds %struct.mc5, %struct.mc5* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IDT75P52100, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @IDT_CMD_READ, align 4
  store i32 %22, i32* %10, align 4
  br label %35

23:                                               ; preds = %4
  %24 = load %struct.mc5*, %struct.mc5** %6, align 8
  %25 = getelementptr inbounds %struct.mc5, %struct.mc5* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IDT75N43102, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @IDT4_CMD_READ, align 4
  store i32 %30, i32* %10, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %69

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.mc5*, %struct.mc5** %6, align 8
  %37 = call i32 @mc5_dbgi_mode_enable(%struct.mc5* %36)
  br label %38

38:                                               ; preds = %55, %35
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* @A_MC5_DB_DBGI_REQ_ADDR0, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = call i32 @t3_write_reg(i32* %43, i32 %44, i32 %45)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @mc5_cmd_write(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %65

55:                                               ; preds = %42
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @dbgi_rd_rsp3(i32* %56, i32* %58, i32* %60, i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32* %64, i32** %9, align 8
  br label %38

65:                                               ; preds = %52, %38
  %66 = load %struct.mc5*, %struct.mc5** %6, align 8
  %67 = call i32 @mc5_dbgi_mode_disable(%struct.mc5* %66)
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %31
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @mc5_dbgi_mode_enable(%struct.mc5*) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i64 @mc5_cmd_write(i32*, i32) #1

declare dso_local i32 @dbgi_rd_rsp3(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mc5_dbgi_mode_disable(%struct.mc5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
