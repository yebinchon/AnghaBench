; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_right_align_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_ifstat.c_right_align_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_stat = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@IF_NAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_stat*)* @right_align_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @right_align_string(%struct.if_stat* %0) #0 {
  %2 = alloca %struct.if_stat*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.if_stat* %0, %struct.if_stat** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %8 = icmp eq %struct.if_stat* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %11 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %44

16:                                               ; preds = %9
  %17 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %18 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @strlen(i32* %20)
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @IF_NAMESIZE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %27 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* @IF_NAMESIZE, align 4
  %35 = call i32 @memset(i8* %33, i32 32, i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.if_stat*, %struct.if_stat** %2, align 8
  %38 = getelementptr inbounds %struct.if_stat, %struct.if_stat* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast i32** %39 to i8*
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @strncpy(i8* %36, i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %16
  br label %44

44:                                               ; preds = %43, %15
  ret void
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
