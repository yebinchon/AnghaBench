; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyveload/extr_bhyveload.c_cb_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyveload/extr_bhyveload.c_cb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_file = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@host_base = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**)* @cb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_open(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.cb_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @host_base, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %109

20:                                               ; preds = %3
  %21 = load i32, i32* @host_base, align 4
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = call i32 @strlcpy(i8* %15, i32 %21, i32 %22)
  %24 = call i32 @strlen(i8* %15)
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %15, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = call i32 @strlen(i8* %15)
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %15, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %31, %20
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @PATH_MAX, align 4
  %39 = call i32 @strlcat(i8* %15, i8* %37, i32 %38)
  %40 = call %struct.cb_file* @malloc(i32 40)
  store %struct.cb_file* %40, %struct.cb_file** %8, align 8
  %41 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %42 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %41, i32 0, i32 2
  %43 = call i64 @stat(i8* %15, %struct.TYPE_4__* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %47 = call i32 @free(%struct.cb_file* %46)
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %109

49:                                               ; preds = %36
  %50 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %51 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %55 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %57 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @S_ISDIR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %49
  %63 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %64 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = call i32 @opendir(i8* %15)
  %66 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %67 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 8
  %69 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %70 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  br label %105

75:                                               ; preds = %62
  %76 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %77 = bitcast %struct.cb_file* %76 to i8*
  %78 = load i8**, i8*** %7, align 8
  store i8* %77, i8** %78, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %109

79:                                               ; preds = %49
  %80 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %81 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @S_ISREG(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %79
  %87 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %88 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load i32, i32* @O_RDONLY, align 4
  %90 = call i64 @open(i8* %15, i32 %89)
  %91 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %92 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i64 %90, i64* %93, align 8
  %94 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %95 = getelementptr inbounds %struct.cb_file, %struct.cb_file* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  br label %105

100:                                              ; preds = %86
  %101 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %102 = bitcast %struct.cb_file* %101 to i8*
  %103 = load i8**, i8*** %7, align 8
  store i8* %102, i8** %103, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %109

104:                                              ; preds = %79
  br label %105

105:                                              ; preds = %104, %99, %74
  %106 = load %struct.cb_file*, %struct.cb_file** %8, align 8
  %107 = call i32 @free(%struct.cb_file* %106)
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %109

109:                                              ; preds = %105, %100, %75, %45, %18
  %110 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local %struct.cb_file* @malloc(i32) #2

declare dso_local i64 @stat(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @free(%struct.cb_file*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @opendir(i8*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @open(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
