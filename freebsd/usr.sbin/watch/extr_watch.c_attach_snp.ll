; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/watch/extr_watch.c_attach_snp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/watch/extr_watch.c_attach_snp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dev_name = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"can't open device\00", align 1
@snp_io = common dso_local global i32 0, align 4
@SNPSTTY = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot attach to tty\00", align 1
@opt_timestamp = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Logging Started.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @attach_snp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_snp() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @dev_name, align 4
  %3 = load i32, i32* @O_RDONLY, align 4
  %4 = load i32, i32* @O_NONBLOCK, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @open(i32 %2, i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @EX_DATAERR, align 4
  %11 = call i32 @fatal(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %0
  %13 = load i32, i32* @snp_io, align 4
  %14 = load i32, i32* @SNPSTTY, align 4
  %15 = call i64 @ioctl(i32 %13, i32 %14, i32* %1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EX_UNAVAILABLE, align 4
  %19 = call i32 @fatal(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load i64, i64* @opt_timestamp, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @timestamp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @timestamp(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
