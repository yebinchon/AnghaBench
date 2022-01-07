; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_load_prga.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_load_prga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i8*, i32, i32, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"read()\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Short read\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Loaded %d PRGA from %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_prga(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %2, align 8
  %5 = load %struct.params*, %struct.params** %2, align 8
  %6 = getelementptr inbounds %struct.params, %struct.params* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.params*, %struct.params** %2, align 8
  %14 = getelementptr inbounds %struct.params, %struct.params* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  br label %54

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.params*, %struct.params** %2, align 8
  %18 = getelementptr inbounds %struct.params, %struct.params* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @read(i32 %16, i32 %19, i32 3)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.params*, %struct.params** %2, align 8
  %34 = getelementptr inbounds %struct.params, %struct.params* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @read(i32 %32, i32 %35, i32 4)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %31
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.params*, %struct.params** %2, align 8
  %44 = getelementptr inbounds %struct.params, %struct.params* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.params*, %struct.params** %2, align 8
  %46 = getelementptr inbounds %struct.params, %struct.params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.params*, %struct.params** %2, align 8
  %49 = getelementptr inbounds %struct.params, %struct.params* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %47, i8* %50)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @close(i32 %52)
  br label %54

54:                                               ; preds = %41, %12
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

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
