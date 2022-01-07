; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_setsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_setsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iplist = type { i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iplist_setsrc(%struct.iplist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iplist*, align 8
  %5 = alloca i8*, align 8
  store %struct.iplist* %0, %struct.iplist** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.iplist*, %struct.iplist** %4, align 8
  %7 = getelementptr inbounds %struct.iplist, %struct.iplist* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strncpy(i8* %8, i8* %9, i32 7)
  %11 = load %struct.iplist*, %struct.iplist** %4, align 8
  %12 = getelementptr inbounds %struct.iplist, %struct.iplist* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 7
  store i8 0, i8* %14, align 1
  %15 = load %struct.iplist*, %struct.iplist** %4, align 8
  %16 = getelementptr inbounds %struct.iplist, %struct.iplist* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.iplist*, %struct.iplist** %4, align 8
  %19 = getelementptr inbounds %struct.iplist, %struct.iplist* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  br label %21

21:                                               ; preds = %38, %2
  %22 = load %struct.iplist*, %struct.iplist** %4, align 8
  %23 = call i64 @iplist_nextrange(%struct.iplist* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.iplist*, %struct.iplist** %4, align 8
  %27 = getelementptr inbounds %struct.iplist, %struct.iplist* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.iplist*, %struct.iplist** %4, align 8
  %31 = getelementptr inbounds %struct.iplist, %struct.iplist* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  br label %37

36:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %48

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.iplist*, %struct.iplist** %4, align 8
  %40 = getelementptr inbounds %struct.iplist, %struct.iplist* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.iplist*, %struct.iplist** %4, align 8
  %44 = getelementptr inbounds %struct.iplist, %struct.iplist* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %42, %45
  br i1 %46, label %21, label %47

47:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @iplist_nextrange(%struct.iplist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
