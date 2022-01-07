; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_make_dev_physpath_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_make_dev_physpath_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"id1,\00", align 1
@SPECNAMELEN = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"WARNING: Unable to alias %s to %s/%s - path too long\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@MAKEDEV_NOWAIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_dev_physpath_alias(i32 %0, %struct.cdev** %1, %struct.cdev* %2, %struct.cdev* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev**, align 8
  %8 = alloca %struct.cdev*, align 8
  %9 = alloca %struct.cdev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.cdev** %1, %struct.cdev*** %7, align 8
  store %struct.cdev* %2, %struct.cdev** %8, align 8
  store %struct.cdev* %3, %struct.cdev** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load %struct.cdev**, %struct.cdev*** %7, align 8
  store %struct.cdev* null, %struct.cdev** %18, align 8
  store i8* null, i8** %11, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %114

25:                                               ; preds = %5
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %26, i32 4)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %114

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32, i32* @SPECNAMELEN, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %13, align 4
  %43 = load %struct.cdev*, %struct.cdev** %8, align 8
  %44 = getelementptr inbounds %struct.cdev, %struct.cdev* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %38
  %51 = load i64, i64* @bootverbose, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.cdev*, %struct.cdev** %8, align 8
  %55 = getelementptr inbounds %struct.cdev, %struct.cdev* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.cdev*, %struct.cdev** %8, align 8
  %59 = getelementptr inbounds %struct.cdev, %struct.cdev* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %57, i8* %60)
  br label %62

62:                                               ; preds = %53, %50
  %63 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %63, i32* %17, align 4
  br label %114

64:                                               ; preds = %38
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MAKEDEV_NOWAIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @M_NOWAIT, align 4
  br label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @M_WAITOK, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @M_DEVBUF, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i8* @malloc(i32 %80, i32 %81, i32 %82)
  store i8* %83, i8** %11, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load i32, i32* @ENOMEM, align 4
  store i32 %87, i32* %17, align 4
  br label %114

88:                                               ; preds = %73
  %89 = load i8*, i8** %11, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load %struct.cdev*, %struct.cdev** %8, align 8
  %92 = getelementptr inbounds %struct.cdev, %struct.cdev* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %90, i8* %93)
  %95 = load %struct.cdev*, %struct.cdev** %9, align 8
  %96 = icmp ne %struct.cdev* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load %struct.cdev*, %struct.cdev** %9, align 8
  %99 = getelementptr inbounds %struct.cdev, %struct.cdev* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %11, align 8
  %102 = call i64 @strcmp(i8* %100, i8* %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.cdev*, %struct.cdev** %9, align 8
  %106 = load %struct.cdev**, %struct.cdev*** %7, align 8
  store %struct.cdev* %105, %struct.cdev** %106, align 8
  store %struct.cdev* null, %struct.cdev** %9, align 8
  store i32 0, i32* %17, align 4
  br label %113

107:                                              ; preds = %97, %88
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.cdev**, %struct.cdev*** %7, align 8
  %110 = load %struct.cdev*, %struct.cdev** %8, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @make_dev_alias_p(i32 %108, %struct.cdev** %109, %struct.cdev* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %107, %104
  br label %114

114:                                              ; preds = %113, %86, %62, %36, %24
  %115 = load %struct.cdev*, %struct.cdev** %9, align 8
  %116 = icmp ne %struct.cdev* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.cdev*, %struct.cdev** %9, align 8
  %119 = call i32 @destroy_dev(%struct.cdev* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i8*, i8** %11, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i8*, i8** %11, align 8
  %125 = load i32, i32* @M_DEVBUF, align 4
  %126 = call i32 @free(i8* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32, i32* %17, align 4
  ret i32 %128
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @make_dev_alias_p(i32, %struct.cdev**, %struct.cdev*, i8*, i8*) #1

declare dso_local i32 @destroy_dev(%struct.cdev*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
