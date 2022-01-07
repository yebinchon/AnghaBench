; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_delname.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_names.c_delname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { %struct.TYPE_2__*, %struct.name*, i32 }
%struct.TYPE_2__ = type { %struct.name* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.name* @delname(%struct.name* %0, i8* %1) #0 {
  %3 = alloca %struct.name*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.name*, align 8
  store %struct.name* %0, %struct.name** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.name*, %struct.name** %3, align 8
  store %struct.name* %6, %struct.name** %5, align 8
  br label %7

7:                                                ; preds = %68, %2
  %8 = load %struct.name*, %struct.name** %5, align 8
  %9 = icmp ne %struct.name* %8, null
  br i1 %9, label %10, label %72

10:                                               ; preds = %7
  %11 = load %struct.name*, %struct.name** %5, align 8
  %12 = getelementptr inbounds %struct.name, %struct.name* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strcasecmp(i32 %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %10
  %18 = load %struct.name*, %struct.name** %5, align 8
  %19 = getelementptr inbounds %struct.name, %struct.name* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp eq %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.name*, %struct.name** %5, align 8
  %24 = getelementptr inbounds %struct.name, %struct.name* %23, i32 0, i32 1
  %25 = load %struct.name*, %struct.name** %24, align 8
  %26 = icmp ne %struct.name* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.name*, %struct.name** %5, align 8
  %29 = getelementptr inbounds %struct.name, %struct.name* %28, i32 0, i32 1
  %30 = load %struct.name*, %struct.name** %29, align 8
  %31 = getelementptr inbounds %struct.name, %struct.name* %30, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %31, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.name*, %struct.name** %5, align 8
  %34 = getelementptr inbounds %struct.name, %struct.name* %33, i32 0, i32 1
  %35 = load %struct.name*, %struct.name** %34, align 8
  store %struct.name* %35, %struct.name** %3, align 8
  br label %68

36:                                               ; preds = %17
  %37 = load %struct.name*, %struct.name** %5, align 8
  %38 = getelementptr inbounds %struct.name, %struct.name* %37, i32 0, i32 1
  %39 = load %struct.name*, %struct.name** %38, align 8
  %40 = icmp eq %struct.name* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.name*, %struct.name** %5, align 8
  %43 = getelementptr inbounds %struct.name, %struct.name* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.name*, %struct.name** %5, align 8
  %48 = getelementptr inbounds %struct.name, %struct.name* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.name* null, %struct.name** %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  br label %68

52:                                               ; preds = %36
  %53 = load %struct.name*, %struct.name** %5, align 8
  %54 = getelementptr inbounds %struct.name, %struct.name* %53, i32 0, i32 1
  %55 = load %struct.name*, %struct.name** %54, align 8
  %56 = load %struct.name*, %struct.name** %5, align 8
  %57 = getelementptr inbounds %struct.name, %struct.name* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store %struct.name* %55, %struct.name** %59, align 8
  %60 = load %struct.name*, %struct.name** %5, align 8
  %61 = getelementptr inbounds %struct.name, %struct.name* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.name*, %struct.name** %5, align 8
  %64 = getelementptr inbounds %struct.name, %struct.name* %63, i32 0, i32 1
  %65 = load %struct.name*, %struct.name** %64, align 8
  %66 = getelementptr inbounds %struct.name, %struct.name* %65, i32 0, i32 0
  store %struct.TYPE_2__* %62, %struct.TYPE_2__** %66, align 8
  br label %67

67:                                               ; preds = %52, %10
  br label %68

68:                                               ; preds = %67, %51, %32
  %69 = load %struct.name*, %struct.name** %5, align 8
  %70 = getelementptr inbounds %struct.name, %struct.name* %69, i32 0, i32 1
  %71 = load %struct.name*, %struct.name** %70, align 8
  store %struct.name* %71, %struct.name** %5, align 8
  br label %7

72:                                               ; preds = %7
  %73 = load %struct.name*, %struct.name** %3, align 8
  ret %struct.name* %73
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
