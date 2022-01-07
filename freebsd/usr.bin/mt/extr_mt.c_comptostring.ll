; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_comptostring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_comptostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compression_types = type { i8*, i32 }

@comptostring.buf = internal global [20 x i8] zeroinitializer, align 16
@MT_COMP_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@MT_COMP_UNSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@comp_types = common dso_local global %struct.compression_types* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @comptostring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @comptostring(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.compression_types*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MT_COMP_DISABLED, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %45

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MT_COMP_UNSUPP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %45

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.compression_types*, %struct.compression_types** @comp_types, align 8
  store %struct.compression_types* %16, %struct.compression_types** %4, align 8
  br label %17

17:                                               ; preds = %30, %15
  %18 = load %struct.compression_types*, %struct.compression_types** %4, align 8
  %19 = getelementptr inbounds %struct.compression_types, %struct.compression_types* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.compression_types*, %struct.compression_types** %4, align 8
  %24 = getelementptr inbounds %struct.compression_types, %struct.compression_types* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %33

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.compression_types*, %struct.compression_types** %4, align 8
  %32 = getelementptr inbounds %struct.compression_types, %struct.compression_types* %31, i32 1
  store %struct.compression_types* %32, %struct.compression_types** %4, align 8
  br label %17

33:                                               ; preds = %28, %17
  %34 = load %struct.compression_types*, %struct.compression_types** %4, align 8
  %35 = getelementptr inbounds %struct.compression_types, %struct.compression_types* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, -252645136
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @comptostring.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @comptostring.buf, i64 0, i64 0), i8** %2, align 8
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.compression_types*, %struct.compression_types** %4, align 8
  %43 = getelementptr inbounds %struct.compression_types, %struct.compression_types* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %41, %38, %13, %8
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
