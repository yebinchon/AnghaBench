; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_reset_aux_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_reset_aux_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@KBD_MAXRETRY = common dso_local global i32 0, align 4
@KBD_MAXWAIT = common dso_local global i32 0, align 4
@PSM_RESEND = common dso_local global i32 0, align 4
@PSMC_RESET_DEV = common dso_local global i32 0, align 4
@KBD_RESETDELAY = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"kbdc: RESET_AUX return code:%04x\0A\00", align 1
@PSM_ACK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"kbdc: RESET_AUX status:%04x\0A\00", align 1
@PSM_RESET_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"kbdc: RESET_AUX ID:%04x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_aux_dev(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @KBD_MAXRETRY, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @KBD_MAXWAIT, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @PSM_RESEND, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %59, %21, %1
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @empty_both_buffers(i32 %15, i32 10)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PSMC_RESET_DEV, align 4
  %19 = call i32 @write_aux_command(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %10

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.TYPE_2__* @kbdcp(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @emptyq(i32* %25)
  %27 = load i32, i32* @KBD_MAXWAIT, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %41, %22
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* @KBD_RESETDELAY, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = call i32 @DELAY(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @read_aux_data_no_wait(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %28

44:                                               ; preds = %39, %28
  %45 = load i64, i64* @verbose, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @LOG_DEBUG, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @log(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @PSM_ACK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %60

59:                                               ; preds = %54
  br label %10

60:                                               ; preds = %58, %10
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %2, align 4
  br label %113

65:                                               ; preds = %60
  %66 = load i32, i32* @KBD_MAXWAIT, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %80, %65
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i32, i32* @KBD_RESETDELAY, align 4
  %72 = mul nsw i32 %71, 1000
  %73 = call i32 @DELAY(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @read_aux_data_no_wait(i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %83

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %5, align 4
  br label %67

83:                                               ; preds = %78, %67
  %84 = load i64, i64* @verbose, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @bootverbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @LOG_DEBUG, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @log(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @PSM_RESET_DONE, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %2, align 4
  br label %113

99:                                               ; preds = %93
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @read_aux_data(i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i64, i64* @verbose, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i64, i64* @bootverbose, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104, %99
  %108 = load i32, i32* @LOG_DEBUG, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @log(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32, i32* @TRUE, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %97, %63
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i32 @write_aux_command(i32, i32) #1

declare dso_local i32 @emptyq(i32*) #1

declare dso_local %struct.TYPE_2__* @kbdcp(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @read_aux_data_no_wait(i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @read_aux_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
