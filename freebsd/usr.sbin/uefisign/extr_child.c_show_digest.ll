; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_show_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uefisign/extr_child.c_show_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.executable = type { i8, i64* }

@.str = private unnamed_addr constant [20 x i8] c"computed %s digest \00", align 1
@DIGEST = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"; digest len %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.executable*)* @show_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_digest(%struct.executable* %0) #0 {
  %2 = alloca %struct.executable*, align 8
  %3 = alloca i32, align 4
  store %struct.executable* %0, %struct.executable** %2, align 8
  %4 = load i8*, i8** @DIGEST, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.executable*, %struct.executable** %2, align 8
  %9 = getelementptr inbounds %struct.executable, %struct.executable* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %6
  %14 = load %struct.executable*, %struct.executable** %2, align 8
  %15 = getelementptr inbounds %struct.executable, %struct.executable* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i8
  %22 = zext i8 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.executable*, %struct.executable** %2, align 8
  %29 = getelementptr inbounds %struct.executable, %struct.executable* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = zext i8 %30 to i32
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
