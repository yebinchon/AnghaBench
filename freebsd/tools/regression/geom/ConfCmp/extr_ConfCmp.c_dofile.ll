; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_dofile.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_dofile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mytree = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32, %struct.TYPE_2__* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"(top)\00", align 1
@StartElement = common dso_local global i32 0, align 4
@EndElement = common dso_local global i32 0, align 4
@CharData = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"XML_Parse complained -> %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mytree* (i8*)* @dofile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mytree* @dofile(i8* %0) #0 {
  %2 = alloca %struct.mytree*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mytree*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = call i32 @XML_ParserCreate(i32* null)
  store i32 %10, i32* %4, align 4
  %11 = call %struct.mytree* @calloc(i32 1, i32 16)
  store %struct.mytree* %11, %struct.mytree** %5, align 8
  %12 = call %struct.TYPE_2__* (...) @new_node()
  %13 = load %struct.mytree*, %struct.mytree** %5, align 8
  %14 = getelementptr inbounds %struct.mytree, %struct.mytree* %13, i32 0, i32 0
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  %15 = load %struct.mytree*, %struct.mytree** %5, align 8
  %16 = getelementptr inbounds %struct.mytree, %struct.mytree* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load %struct.mytree*, %struct.mytree** %5, align 8
  %20 = getelementptr inbounds %struct.mytree, %struct.mytree* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.mytree*, %struct.mytree** %5, align 8
  %23 = getelementptr inbounds %struct.mytree, %struct.mytree* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.mytree*, %struct.mytree** %5, align 8
  %27 = getelementptr inbounds %struct.mytree, %struct.mytree* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.mytree*, %struct.mytree** %5, align 8
  %30 = getelementptr inbounds %struct.mytree, %struct.mytree* %29, i32 0, i32 1
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %30, align 8
  %31 = load %struct.mytree*, %struct.mytree** %5, align 8
  %32 = getelementptr inbounds %struct.mytree, %struct.mytree* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sbuf_finish(i32 %35)
  %37 = load %struct.mytree*, %struct.mytree** %5, align 8
  %38 = getelementptr inbounds %struct.mytree, %struct.mytree* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sbuf_finish(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.mytree*, %struct.mytree** %5, align 8
  %45 = call i32 @XML_SetUserData(i32 %43, %struct.mytree* %44)
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @StartElement, align 4
  %48 = load i32, i32* @EndElement, align 4
  %49 = call i32 @XML_SetElementHandler(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @CharData, align 4
  %52 = call i32 @XML_SetCharacterDataHandler(i32 %50, i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* @O_RDONLY, align 4
  %55 = call i32 @open(i8* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %1
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @err(i32 1, i8* %59)
  br label %61

61:                                               ; preds = %58, %1
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @fstat(i32 %62, %struct.stat* %6)
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PROT_READ, align 4
  %67 = load i32, i32* @MAP_NOCORE, align 4
  %68 = load i32, i32* @MAP_PRIVATE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @mmap(i32* null, i32 %65, i32 %66, i32 %69, i32 %70, i32 0)
  store i8* %71, i8** %8, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @XML_Parse(i32 %72, i8* %73, i32 %75, i32 1)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %61
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %61
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @munmap(i8* %83, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @close(i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @XML_ParserFree(i32 %89)
  %91 = load %struct.mytree*, %struct.mytree** %5, align 8
  %92 = getelementptr inbounds %struct.mytree, %struct.mytree* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @sbuf_finish(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %82
  %100 = load %struct.mytree*, %struct.mytree** %5, align 8
  store %struct.mytree* %100, %struct.mytree** %2, align 8
  br label %102

101:                                              ; preds = %82
  store %struct.mytree* null, %struct.mytree** %2, align 8
  br label %102

102:                                              ; preds = %101, %99
  %103 = load %struct.mytree*, %struct.mytree** %2, align 8
  ret %struct.mytree* %103
}

declare dso_local i32 @XML_ParserCreate(i32*) #1

declare dso_local %struct.mytree* @calloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @new_node(...) #1

declare dso_local i32 @sbuf_finish(i32) #1

declare dso_local i32 @XML_SetUserData(i32, %struct.mytree*) #1

declare dso_local i32 @XML_SetElementHandler(i32, i32, i32) #1

declare dso_local i32 @XML_SetCharacterDataHandler(i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XML_Parse(i32, i8*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @XML_ParserFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
