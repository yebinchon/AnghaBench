; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_get_mountlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_get_mountlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mountlist = type { i8*, i8* }

@STRSIZ = common dso_local global i32 0, align 4
@_PATH_RMOUNTLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"can't open %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@MNTNAMLEN = common dso_local global i64 0, align 8
@MNTPATHLEN = common dso_local global i64 0, align 8
@mlhead = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_mountlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_mountlist() #0 {
  %1 = alloca %struct.mountlist*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @STRSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @_PATH_RMOUNTLIST, align 4
  %14 = call i32* @fopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %0
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %76

21:                                               ; preds = %16
  %22 = load i32, i32* @LOG_ERR, align 4
  %23 = load i32, i32* @_PATH_RMOUNTLIST, align 4
  %24 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store i32 1, i32* %8, align 4
  br label %76

25:                                               ; preds = %0
  br label %26

26:                                               ; preds = %47, %39, %25
  %27 = load i32, i32* @STRSIZ, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @fgets(i8* %12, i32 %27, i32* %28)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %73

31:                                               ; preds = %26
  store i8* %12, i8** %4, align 8
  %32 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %32, i8** %2, align 8
  %33 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %3, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %31
  br label %26

40:                                               ; preds = %36
  %41 = call i64 @malloc(i32 16)
  %42 = inttoptr i64 %41 to %struct.mountlist*
  store %struct.mountlist* %42, %struct.mountlist** %1, align 8
  %43 = load %struct.mountlist*, %struct.mountlist** %1, align 8
  %44 = icmp eq %struct.mountlist* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (...) @out_of_mem()
  br label %47

47:                                               ; preds = %45, %40
  %48 = load %struct.mountlist*, %struct.mountlist** %1, align 8
  %49 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %2, align 8
  %52 = load i64, i64* @MNTNAMLEN, align 8
  %53 = call i32 @strncpy(i8* %50, i8* %51, i64 %52)
  %54 = load %struct.mountlist*, %struct.mountlist** %1, align 8
  %55 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* @MNTNAMLEN, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load %struct.mountlist*, %struct.mountlist** %1, align 8
  %60 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load i64, i64* @MNTPATHLEN, align 8
  %64 = call i32 @strncpy(i8* %61, i8* %62, i64 %63)
  %65 = load %struct.mountlist*, %struct.mountlist** %1, align 8
  %66 = getelementptr inbounds %struct.mountlist, %struct.mountlist* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i64, i64* @MNTPATHLEN, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load %struct.mountlist*, %struct.mountlist** %1, align 8
  %71 = load i32, i32* @next, align 4
  %72 = call i32 @SLIST_INSERT_HEAD(i32* @mlhead, %struct.mountlist* %70, i32 %71)
  br label %26

73:                                               ; preds = %26
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @fclose(i32* %74)
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %73, %21, %20
  %77 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %8, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @syslog(i32, i8*, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @out_of_mem(...) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.mountlist*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
