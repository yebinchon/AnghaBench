; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_inf.c_dump_pci_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ndiscvt/extr_inf.c_dump_pci_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"VEN_\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DEV_\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SUBSYS_\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0x00000000\00", align 1
@ofp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"\09\\\0A\09{ %s, %s, %s, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dump_pci_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pci_id(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [7 x i8], align 1
  %5 = alloca [7 x i8], align 1
  %6 = alloca [14 x i8], align 1
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strcasestr(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %58

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %14, i8** %3, align 8
  %15 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strncat(i8* %17, i8* %18, i32 4)
  %20 = load i8*, i8** %2, align 8
  %21 = call i8* @strcasestr(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %58

25:                                               ; preds = %12
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %27, i8** %3, align 8
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %29 = call i32 @strcpy(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @strncat(i8* %30, i8* %31, i32 4)
  %33 = load i8*, i8** %3, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %58

36:                                               ; preds = %25
  %37 = load i8*, i8** %2, align 8
  %38 = call i8* @strcasestr(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %52

44:                                               ; preds = %36
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 7
  store i8* %46, i8** %3, align 8
  %47 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %48 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %49 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strncat(i8* %49, i8* %50, i32 8)
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i32, i32* @ofp, align 4
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %55 = getelementptr inbounds [7 x i8], [7 x i8]* %5, i64 0, i64 0
  %56 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i64 0, i64 0
  %57 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %54, i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %52, %35, %24, %11
  ret void
}

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
