; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_dev.c_nsmb_dev_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_dev.c_nsmb_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nsmb_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nsmb\00", align 1
@nsmb_dev = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nsmb_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsmb_dev_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @UID_ROOT, align 4
  %3 = load i32, i32* @GID_OPERATOR, align 4
  %4 = call i32* @make_dev(i32* @nsmb_cdevsw, i32 0, i32 %2, i32 %3, i32 384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** @nsmb_dev, align 8
  %5 = load i32*, i32** @nsmb_dev, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  store i32 %8, i32* %1, align 4
  br label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %9, %7
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare dso_local i32* @make_dev(i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
