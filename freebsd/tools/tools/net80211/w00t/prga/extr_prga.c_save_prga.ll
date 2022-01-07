; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_save_prga.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_save_prga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i32, i32 }

@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"open()\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Short write\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Wrote %d/%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Got %d bytes of PRGA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_prga(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %5 = load %struct.params*, %struct.params** %2, align 8
  %6 = getelementptr inbounds %struct.params, %struct.params* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @O_WRONLY, align 4
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @open(i32 %7, i32 %10, i32 420)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.params*, %struct.params** %2, align 8
  %19 = getelementptr inbounds %struct.params, %struct.params* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @write(i32 %17, i32 %20, i32 3)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %16
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.params*, %struct.params** %2, align 8
  %35 = getelementptr inbounds %struct.params, %struct.params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.params*, %struct.params** %2, align 8
  %38 = getelementptr inbounds %struct.params, %struct.params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @write(i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %32
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.params*, %struct.params** %2, align 8
  %48 = getelementptr inbounds %struct.params, %struct.params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.params*, %struct.params** %2, align 8
  %54 = getelementptr inbounds %struct.params, %struct.params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %55)
  %57 = call i32 @exit(i32 1) #3
  unreachable

58:                                               ; preds = %45
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load %struct.params*, %struct.params** %2, align 8
  %62 = getelementptr inbounds %struct.params, %struct.params* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  ret void
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
