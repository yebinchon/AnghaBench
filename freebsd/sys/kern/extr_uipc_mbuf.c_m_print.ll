; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.mbuf*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"mbuf: %p\0A\00", align 1
@M_PKTHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"mbuf: %p len: %d, next: %p, %b%s\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"\10\10freelist\0Fskipfw\09proto5\08proto4\07proto3\06proto2\05proto1\04rdonly\03eor\02pkthdr\01ext\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c", %*D\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%d bytes unaccounted for.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_print(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %9 = icmp eq %struct.mbuf* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %11)
  br label %98

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @M_PKTHDR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  br label %26

25:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %27, %struct.mbuf** %7, align 8
  br label %28

28:                                               ; preds = %87, %26
  %29 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %30 = icmp ne %struct.mbuf* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i1 [ true, %31 ], [ %36, %34 ]
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi i1 [ false, %28 ], [ %38, %37 ]
  br i1 %40, label %41, label %91

41:                                               ; preds = %39
  %42 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %47, %41
  %54 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 2
  %60 = load %struct.mbuf*, %struct.mbuf** %59, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.mbuf* %54, i32 %57, %struct.mbuf* %60, i32 %63, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %53
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %78

78:                                               ; preds = %71, %53
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %78
  %88 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 2
  %90 = load %struct.mbuf*, %struct.mbuf** %89, align 8
  store %struct.mbuf* %90, %struct.mbuf** %7, align 8
  br label %28

91:                                               ; preds = %39
  %92 = load i32, i32* %5, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %10
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
