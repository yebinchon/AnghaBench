; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_pdb.c_check_junk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_pdb.c_check_junk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdinfo = type { i8*, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s (%ju) -- \00", align 1
@stdin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdinfo*)* @check_junk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_junk(%struct.cmdinfo* %0) #0 {
  %2 = alloca %struct.cmdinfo*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.cmdinfo* %0, %struct.cmdinfo** %2, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = load %struct.cmdinfo*, %struct.cmdinfo** %2, align 8
  %7 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.cmdinfo*, %struct.cmdinfo** %2, align 8
  %10 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %12)
  %14 = load i32, i32* @stdin, align 4
  %15 = call i8* @fgetln(i32 %14, i64* %4)
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 121
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 89
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ true, %18 ], [ %29, %24 ]
  br label %32

32:                                               ; preds = %30, %1
  %33 = phi i1 [ false, %1 ], [ %31, %30 ]
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  ret i32 %35
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @fgetln(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
