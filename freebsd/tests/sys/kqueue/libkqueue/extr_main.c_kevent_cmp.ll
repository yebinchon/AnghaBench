; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i64, i64, i64, i64, i64, i64* }

@.str = private unnamed_addr constant [36 x i8] c"kevent_cmp: mismatch:\0A  %s !=\0A  %s\0A\00", align 1
@EV_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kevent_cmp(%struct.kevent* %0, %struct.kevent* %1) #0 {
  %3 = alloca %struct.kevent*, align 8
  %4 = alloca %struct.kevent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.kevent* %0, %struct.kevent** %3, align 8
  store %struct.kevent* %1, %struct.kevent** %4, align 8
  %7 = load %struct.kevent*, %struct.kevent** %3, align 8
  %8 = getelementptr inbounds %struct.kevent, %struct.kevent* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.kevent*, %struct.kevent** %4, align 8
  %11 = getelementptr inbounds %struct.kevent, %struct.kevent* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %102, label %14

14:                                               ; preds = %2
  %15 = load %struct.kevent*, %struct.kevent** %3, align 8
  %16 = getelementptr inbounds %struct.kevent, %struct.kevent* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.kevent*, %struct.kevent** %4, align 8
  %19 = getelementptr inbounds %struct.kevent, %struct.kevent* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %102, label %22

22:                                               ; preds = %14
  %23 = load %struct.kevent*, %struct.kevent** %3, align 8
  %24 = getelementptr inbounds %struct.kevent, %struct.kevent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.kevent*, %struct.kevent** %4, align 8
  %27 = getelementptr inbounds %struct.kevent, %struct.kevent* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %102, label %30

30:                                               ; preds = %22
  %31 = load %struct.kevent*, %struct.kevent** %3, align 8
  %32 = getelementptr inbounds %struct.kevent, %struct.kevent* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.kevent*, %struct.kevent** %4, align 8
  %35 = getelementptr inbounds %struct.kevent, %struct.kevent* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %102, label %38

38:                                               ; preds = %30
  %39 = load %struct.kevent*, %struct.kevent** %3, align 8
  %40 = getelementptr inbounds %struct.kevent, %struct.kevent* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.kevent*, %struct.kevent** %4, align 8
  %43 = getelementptr inbounds %struct.kevent, %struct.kevent* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %102, label %46

46:                                               ; preds = %38
  %47 = load %struct.kevent*, %struct.kevent** %3, align 8
  %48 = getelementptr inbounds %struct.kevent, %struct.kevent* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.kevent*, %struct.kevent** %4, align 8
  %51 = getelementptr inbounds %struct.kevent, %struct.kevent* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %102, label %54

54:                                               ; preds = %46
  %55 = load %struct.kevent*, %struct.kevent** %3, align 8
  %56 = getelementptr inbounds %struct.kevent, %struct.kevent* %55, i32 0, i32 6
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.kevent*, %struct.kevent** %4, align 8
  %61 = getelementptr inbounds %struct.kevent, %struct.kevent* %60, i32 0, i32 6
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %59, %64
  br i1 %65, label %102, label %66

66:                                               ; preds = %54
  %67 = load %struct.kevent*, %struct.kevent** %3, align 8
  %68 = getelementptr inbounds %struct.kevent, %struct.kevent* %67, i32 0, i32 6
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.kevent*, %struct.kevent** %4, align 8
  %73 = getelementptr inbounds %struct.kevent, %struct.kevent* %72, i32 0, i32 6
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %71, %76
  br i1 %77, label %102, label %78

78:                                               ; preds = %66
  %79 = load %struct.kevent*, %struct.kevent** %3, align 8
  %80 = getelementptr inbounds %struct.kevent, %struct.kevent* %79, i32 0, i32 6
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.kevent*, %struct.kevent** %4, align 8
  %85 = getelementptr inbounds %struct.kevent, %struct.kevent* %84, i32 0, i32 6
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %83, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %78
  %91 = load %struct.kevent*, %struct.kevent** %3, align 8
  %92 = getelementptr inbounds %struct.kevent, %struct.kevent* %91, i32 0, i32 6
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.kevent*, %struct.kevent** %4, align 8
  %97 = getelementptr inbounds %struct.kevent, %struct.kevent* %96, i32 0, i32 6
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %95, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %90, %78, %66, %54, %46, %38, %30, %22, %14, %2
  %103 = load %struct.kevent*, %struct.kevent** %3, align 8
  %104 = call i8* @kevent_to_str(%struct.kevent* %103)
  store i8* %104, i8** %5, align 8
  %105 = load %struct.kevent*, %struct.kevent** %4, align 8
  %106 = call i8* @kevent_to_str(%struct.kevent* %105)
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %107, i8* %108)
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @free(i8* %112)
  %114 = call i32 (...) @abort() #3
  unreachable

115:                                              ; preds = %90
  ret void
}

declare dso_local i8* @kevent_to_str(%struct.kevent*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
