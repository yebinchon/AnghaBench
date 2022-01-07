; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_reinit_fdir_tables_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_reinit_fdir_tables_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_FDIRCTRL = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_INIT_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ixgbe_reinit_fdir_tables_82599\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Flow Director previous command did not complete, aborting table re-initialization.\0A\00", align 1
@IXGBE_FDIRFREE = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CLEARHT = common dso_local global i32 0, align 4
@IXGBE_FDIRHASH = common dso_local global i32 0, align 4
@IXGBE_FDIR_INIT_DONE_POLL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Flow Director Signature poll time exceeded!\0A\00", align 1
@IXGBE_ERR_FDIR_REINIT_FAILED = common dso_local global i64 0, align 8
@IXGBE_FDIRUSTAT = common dso_local global i32 0, align 4
@IXGBE_FDIRFSTAT = common dso_local global i32 0, align 4
@IXGBE_FDIRMATCH = common dso_local global i32 0, align 4
@IXGBE_FDIRMISS = common dso_local global i32 0, align 4
@IXGBE_FDIRLEN = common dso_local global i32 0, align 4
@IXGBE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reinit_fdir_tables_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @IXGBE_FDIRCTRL_INIT_DONE, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = call i64 @ixgbe_fdir_check_cmd_complete(%struct.ixgbe_hw* %16, i32* %7)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %4, align 8
  store i64 %22, i64* %2, align 8
  br label %102

23:                                               ; preds = %1
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = load i32, i32* @IXGBE_FDIRFREE, align 4
  %26 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %24, i32 %25, i32 0)
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %28 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %27)
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %32 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %33 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %31, i32 %32)
  %34 = load i32, i32* @IXGBE_FDIRCMD_CLEARHT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %29, i32 %30, i32 %35)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %37)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %43 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %41, i32 %42)
  %44 = load i32, i32* @IXGBE_FDIRCMD_CLEARHT, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %39, i32 %40, i32 %46)
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %48)
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %51 = load i32, i32* @IXGBE_FDIRHASH, align 4
  %52 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %50, i32 %51, i32 0)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %53)
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %56 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %55, i32 %56, i32 %57)
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %75, %23
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @IXGBE_FDIR_INIT_DONE_POLL, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %67 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %68 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %66, i32 %67)
  %69 = load i32, i32* @IXGBE_FDIRCTRL_INIT_DONE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %78

73:                                               ; preds = %65
  %74 = call i32 @msec_delay(i32 1)
  br label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %61

78:                                               ; preds = %72, %61
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @IXGBE_FDIR_INIT_DONE_POLL, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i64, i64* @IXGBE_ERR_FDIR_REINIT_FAILED, align 8
  store i64 %84, i64* %2, align 8
  br label %102

85:                                               ; preds = %78
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %87 = load i32, i32* @IXGBE_FDIRUSTAT, align 4
  %88 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %86, i32 %87)
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = load i32, i32* @IXGBE_FDIRFSTAT, align 4
  %91 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %89, i32 %90)
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %93 = load i32, i32* @IXGBE_FDIRMATCH, align 4
  %94 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %92, i32 %93)
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = load i32, i32* @IXGBE_FDIRMISS, align 4
  %97 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %95, i32 %96)
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %99 = load i32, i32* @IXGBE_FDIRLEN, align 4
  %100 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %98, i32 %99)
  %101 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %101, i64* %2, align 8
  br label %102

102:                                              ; preds = %85, %82, %20
  %103 = load i64, i64* %2, align 8
  ret i64 %103
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @ixgbe_fdir_check_cmd_complete(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
