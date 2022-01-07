; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_inf.c_dump_usb_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_inf.c_dump_usb_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"VID_\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PID_\00", align 1
@ofp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"\09\\\0A\09{ %s, %s, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dump_usb_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_usb_id(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [7 x i8], align 1
  %5 = alloca [7 x i8], align 1
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @strcasestr(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %13, i8** %3, align 8
  %14 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strncat(i8* %16, i8* %17, i32 4)
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @strcasestr(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %40

24:                                               ; preds = %11
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 4
  store i8* %26, i8** %3, align 8
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %28 = call i32 @strcpy(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %29 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strncat(i8* %29, i8* %30, i32 4)
  %32 = load i8*, i8** %3, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %40

35:                                               ; preds = %24
  %36 = load i32, i32* @ofp, align 4
  %37 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %38 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %39 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %35, %34, %23, %10
  ret void
}

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
