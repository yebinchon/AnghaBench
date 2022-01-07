; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_src_getcharstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_src_getcharstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.source = type { i8, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64 }

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.source*)* @src_getcharstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_getcharstring(%struct.source* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.source*, align 8
  store %struct.source* %0, %struct.source** %3, align 8
  %4 = load %struct.source*, %struct.source** %3, align 8
  %5 = getelementptr inbounds %struct.source, %struct.source* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.source*, %struct.source** %3, align 8
  %10 = getelementptr inbounds %struct.source, %struct.source* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %8, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = load %struct.source*, %struct.source** %3, align 8
  %17 = getelementptr inbounds %struct.source, %struct.source* %16, i32 0, i32 0
  store i8 %15, i8* %17, align 8
  %18 = load %struct.source*, %struct.source** %3, align 8
  %19 = getelementptr inbounds %struct.source, %struct.source* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @EOF, align 4
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %1
  %26 = load %struct.source*, %struct.source** %3, align 8
  %27 = getelementptr inbounds %struct.source, %struct.source* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.source*, %struct.source** %3, align 8
  %33 = getelementptr inbounds %struct.source, %struct.source* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %25, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
