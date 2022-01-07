; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_util.c_isvectordef.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_util.c_isvectordef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@defined = common dso_local global i32 0, align 4
@typedefed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isvectordef(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %37 [
    i32 128, label %9
    i32 130, label %15
    i32 129, label %16
    i32 131, label %17
  ]

9:                                                ; preds = %7
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @streq(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %38

16:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %38

17:                                               ; preds = %7
  %18 = load i32, i32* @defined, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @typedefed, align 4
  %21 = call i64 @FINDVAL(i32 %18, i8* %19, i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %38

26:                                               ; preds = %17
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %26, %7
  br label %7

38:                                               ; preds = %25, %16, %15, %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i64 @FINDVAL(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
