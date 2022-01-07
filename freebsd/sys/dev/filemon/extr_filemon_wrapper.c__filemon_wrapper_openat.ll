; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c__filemon_wrapper_openat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/filemon/extr_filemon_wrapper.c__filemon_wrapper_openat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.file = type { i32 }
%struct.filemon = type { i8*, i32 }

@curproc = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"A %d %s\0A\00", align 1
@CAP_LOOKUP = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"R %d %s%s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"%c %d %s%s%s\0A\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i8*, i32, i32)* @_filemon_wrapper_openat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_filemon_wrapper_openat(%struct.thread* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.filemon*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %16 = call %struct.filemon* @filemon_proc_get(%struct.TYPE_3__* %15)
  store %struct.filemon* %16, %struct.filemon** %11, align 8
  %17 = icmp ne %struct.filemon* %16, null
  br i1 %17, label %18, label %126

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* null, i8** %13, align 8
  store %struct.file* null, %struct.file** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.filemon*, %struct.filemon** %11, align 8
  %21 = getelementptr inbounds %struct.filemon, %struct.filemon* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @copyinstr(i8* %19, i8* %22, i32 8, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.filemon*, %struct.filemon** %11, align 8
  %28 = getelementptr inbounds %struct.filemon, %struct.filemon* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %113

29:                                               ; preds = %18
  %30 = load %struct.filemon*, %struct.filemon** %11, align 8
  %31 = getelementptr inbounds %struct.filemon, %struct.filemon* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 47
  br i1 %36, label %37, label %64

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @AT_FDCWD, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.filemon*, %struct.filemon** %11, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = trunc i32 %45 to i8
  %47 = load %struct.filemon*, %struct.filemon** %11, align 8
  %48 = getelementptr inbounds %struct.filemon, %struct.filemon* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (%struct.filemon*, i8*, i8, i8*, ...) @filemon_output_event(%struct.filemon* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8 signext %46, i8* %49)
  %51 = load %struct.thread*, %struct.thread** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @CAP_LOOKUP, align 4
  %54 = call i32 @cap_rights_init(i32* %14, i32 %53)
  %55 = call i64 @getvnode(%struct.thread* %51, i32 %52, i32 %54, %struct.file** %10)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %41
  %58 = load %struct.thread*, %struct.thread** %5, align 8
  %59 = load %struct.file*, %struct.file** %10, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @vn_fullpath(%struct.thread* %58, i32 %61, i8** %12, i8** %13)
  br label %63

63:                                               ; preds = %57, %41
  br label %64

64:                                               ; preds = %63, %37, %29
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @O_RDWR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load %struct.filemon*, %struct.filemon** %11, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %83 = load %struct.filemon*, %struct.filemon** %11, align 8
  %84 = getelementptr inbounds %struct.filemon, %struct.filemon* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (%struct.filemon*, i8*, i8, i8*, ...) @filemon_output_event(%struct.filemon* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8 signext %74, i8* %75, i8* %82, i8* %85)
  br label %87

87:                                               ; preds = %69, %64
  %88 = load %struct.filemon*, %struct.filemon** %11, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @O_ACCMODE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 87, i32 82
  %95 = trunc i32 %94 to i8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curproc, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %109 = load %struct.filemon*, %struct.filemon** %11, align 8
  %110 = getelementptr inbounds %struct.filemon, %struct.filemon* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (%struct.filemon*, i8*, i8, i8*, ...) @filemon_output_event(%struct.filemon* %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8 signext %95, i8* %100, i8* %101, i8* %108, i8* %111)
  br label %113

113:                                              ; preds = %87, %25
  %114 = load %struct.filemon*, %struct.filemon** %11, align 8
  %115 = call i32 @filemon_drop(%struct.filemon* %114)
  %116 = load %struct.file*, %struct.file** %10, align 8
  %117 = icmp ne %struct.file* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.file*, %struct.file** %10, align 8
  %120 = load %struct.thread*, %struct.thread** %5, align 8
  %121 = call i32 @fdrop(%struct.file* %119, %struct.thread* %120)
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i8*, i8** %13, align 8
  %124 = load i32, i32* @M_TEMP, align 4
  %125 = call i32 @free(i8* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %4
  ret void
}

declare dso_local %struct.filemon* @filemon_proc_get(%struct.TYPE_3__*) #1

declare dso_local i32 @copyinstr(i8*, i8*, i32, i32*) #1

declare dso_local i32 @filemon_output_event(%struct.filemon*, i8*, i8 signext, i8*, ...) #1

declare dso_local i64 @getvnode(%struct.thread*, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @vn_fullpath(%struct.thread*, i32, i8**, i8**) #1

declare dso_local i32 @filemon_drop(%struct.filemon*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
