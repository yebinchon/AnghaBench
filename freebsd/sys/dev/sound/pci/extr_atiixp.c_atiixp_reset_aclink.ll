; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_reset_aclink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_reset_aclink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i32 }

@ATI_REG_CMD = common dso_local global i32 0, align 4
@ATI_REG_CMD_POWERDOWN = common dso_local global i32 0, align 4
@ATI_REG_CMD_AC_SOFT_RESET = common dso_local global i32 0, align 4
@ATI_REG_CMD_ACLINK_ACTIVE = common dso_local global i32 0, align 4
@ATI_REG_CMD_AC_RESET = common dso_local global i32 0, align 4
@ATI_REG_CMD_AC_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"giving up aclink reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atiixp_info*)* @atiixp_reset_aclink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_reset_aclink(%struct.atiixp_info* %0) #0 {
  %2 = alloca %struct.atiixp_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.atiixp_info* %0, %struct.atiixp_info** %2, align 8
  %5 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %6 = load i32, i32* @ATI_REG_CMD, align 4
  %7 = call i32 @atiixp_rd(%struct.atiixp_info* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ATI_REG_CMD_POWERDOWN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @ATI_REG_CMD_POWERDOWN, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %18 = load i32, i32* @ATI_REG_CMD, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @atiixp_wr(%struct.atiixp_info* %17, i32 %18, i32 %19)
  %21 = call i32 @DELAY(i32 20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %24 = load i32, i32* @ATI_REG_CMD, align 4
  %25 = call i32 @atiixp_rd(%struct.atiixp_info* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @ATI_REG_CMD_AC_SOFT_RESET, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %30 = load i32, i32* @ATI_REG_CMD, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @atiixp_wr(%struct.atiixp_info* %29, i32 %30, i32 %31)
  %33 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %34 = load i32, i32* @ATI_REG_CMD, align 4
  %35 = call i32 @atiixp_rd(%struct.atiixp_info* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = call i32 @DELAY(i32 20)
  %37 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %38 = load i32, i32* @ATI_REG_CMD, align 4
  %39 = call i32 @atiixp_rd(%struct.atiixp_info* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @ATI_REG_CMD_AC_SOFT_RESET, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %45 = load i32, i32* @ATI_REG_CMD, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @atiixp_wr(%struct.atiixp_info* %44, i32 %45, i32 %46)
  store i32 10, i32* %4, align 4
  %48 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %49 = load i32, i32* @ATI_REG_CMD, align 4
  %50 = call i32 @atiixp_rd(%struct.atiixp_info* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %62, %22
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @ATI_REG_CMD_ACLINK_ACTIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i1 [ false, %51 ], [ %59, %56 ]
  br i1 %61, label %62, label %91

62:                                               ; preds = %60
  %63 = load i32, i32* @ATI_REG_CMD_AC_RESET, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* @ATI_REG_CMD_AC_SYNC, align 4
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %71 = load i32, i32* @ATI_REG_CMD, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @atiixp_wr(%struct.atiixp_info* %70, i32 %71, i32 %72)
  %74 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %75 = load i32, i32* @ATI_REG_CMD, align 4
  %76 = call i32 @atiixp_rd(%struct.atiixp_info* %74, i32 %75)
  store i32 %76, i32* %3, align 4
  %77 = call i32 @DELAY(i32 20)
  %78 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %79 = load i32, i32* @ATI_REG_CMD, align 4
  %80 = call i32 @atiixp_rd(%struct.atiixp_info* %78, i32 %79)
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* @ATI_REG_CMD_AC_RESET, align 4
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  %84 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %85 = load i32, i32* @ATI_REG_CMD, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @atiixp_wr(%struct.atiixp_info* %84, i32 %85, i32 %86)
  %88 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %89 = load i32, i32* @ATI_REG_CMD, align 4
  %90 = call i32 @atiixp_rd(%struct.atiixp_info* %88, i32 %89)
  store i32 %90, i32* %3, align 4
  br label %51

91:                                               ; preds = %60
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %96 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %91
  %100 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %101 = load i32, i32* @ATI_REG_CMD, align 4
  %102 = call i32 @atiixp_rd(%struct.atiixp_info* %100, i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* @ATI_REG_CMD_AC_SYNC, align 4
  %104 = load i32, i32* @ATI_REG_CMD_AC_RESET, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %3, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %3, align 4
  %108 = load %struct.atiixp_info*, %struct.atiixp_info** %2, align 8
  %109 = load i32, i32* @ATI_REG_CMD, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @atiixp_wr(%struct.atiixp_info* %108, i32 %109, i32 %110)
  ret void
}

declare dso_local i32 @atiixp_rd(%struct.atiixp_info*, i32) #1

declare dso_local i32 @atiixp_wr(%struct.atiixp_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
