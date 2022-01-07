; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_parse_pipes.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_parse_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.group_des = type { i32, i32, i32 }

@parse_pipes.max_groups = internal global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"spec %s num_groups %d\00", align 1
@glob_arg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@groups = common dso_local global %struct.group_des* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@MAX_IFNAMELEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"name '%s' too long\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"missing prefix before ':' in '%s'\00", align 1
@DEF_OUT_PIPES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"invalid number of pipes '%s' (must be at least 1)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pipes(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.group_des*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @index(i8* %7, i8 signext 58)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glob_arg, i32 0, i32 0), align 4
  %11 = call i32 @ND(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  %12 = load i32, i32* @parse_pipes.max_groups, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glob_arg, i32 0, i32 0), align 4
  %14 = add nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glob_arg, i32 0, i32 0), align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 12, %19
  store i64 %20, i64* %6, align 8
  %21 = load %struct.group_des*, %struct.group_des** @groups, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call %struct.group_des* @realloc(%struct.group_des* %21, i64 %22)
  store %struct.group_des* %23, %struct.group_des** @groups, align 8
  %24 = load %struct.group_des*, %struct.group_des** @groups, align 8
  %25 = icmp eq %struct.group_des* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %106

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.group_des*, %struct.group_des** @groups, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glob_arg, i32 0, i32 0), align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.group_des, %struct.group_des* %30, i64 %32
  store %struct.group_des* %33, %struct.group_des** %5, align 8
  %34 = load %struct.group_des*, %struct.group_des** %5, align 8
  %35 = call i32 @memset(%struct.group_des* %34, i32 0, i32 12)
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %74

38:                                               ; preds = %29
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = load i32, i32* @MAX_IFNAMELEN, align 4
  %45 = sub nsw i32 %44, 8
  %46 = sext i32 %45 to i64
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 1, i32* %2, align 4
  br label %106

51:                                               ; preds = %38
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  store i32 1, i32* %2, align 4
  br label %106

58:                                               ; preds = %51
  %59 = load %struct.group_des*, %struct.group_des** %5, align 8
  %60 = getelementptr inbounds %struct.group_des, %struct.group_des* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @strncpy(i32 %61, i8* %62, i32 %68)
  %70 = load %struct.group_des*, %struct.group_des** %5, align 8
  %71 = getelementptr inbounds %struct.group_des, %struct.group_des* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  br label %76

74:                                               ; preds = %29
  %75 = load i8*, i8** %3, align 8
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %74, %58
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @DEF_OUT_PIPES, align 4
  %83 = load %struct.group_des*, %struct.group_des** %5, align 8
  %84 = getelementptr inbounds %struct.group_des, %struct.group_des* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %98

85:                                               ; preds = %76
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @atoi(i8* %86)
  %88 = load %struct.group_des*, %struct.group_des** %5, align 8
  %89 = getelementptr inbounds %struct.group_des, %struct.group_des* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.group_des*, %struct.group_des** %5, align 8
  %91 = getelementptr inbounds %struct.group_des, %struct.group_des* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  store i32 1, i32* %2, align 4
  br label %106

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %81
  %99 = load %struct.group_des*, %struct.group_des** %5, align 8
  %100 = getelementptr inbounds %struct.group_des, %struct.group_des* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glob_arg, i32 0, i32 1), align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glob_arg, i32 0, i32 1), align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glob_arg, i32 0, i32 0), align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glob_arg, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %98, %94, %55, %48, %26
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i8* @index(i8*, i8 signext) #1

declare dso_local i32 @ND(i8*, i8*, i32) #1

declare dso_local %struct.group_des* @realloc(%struct.group_des*, i64) #1

declare dso_local i32 @D(i8*, ...) #1

declare dso_local i32 @memset(%struct.group_des*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
