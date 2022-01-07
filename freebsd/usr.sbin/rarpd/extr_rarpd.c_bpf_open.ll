; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_bpf_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rarpd/extr_rarpd.c_bpf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"/dev/bpf%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@pidfile_fh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bpf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [12 x i8], align 1
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %2, align 4
  %8 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %6)
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %10 = load i32, i32* @O_RDWR, align 4
  %11 = call i32 @open(i8* %9, i32 %10)
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EBUSY, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %4, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %1, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %27 = call i32 @logmsg(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @pidfile_fh, align 4
  %29 = call i32 @pidfile_remove(i32 %28)
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %21
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @logmsg(i32, i8*, i8*) #1

declare dso_local i32 @pidfile_remove(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
