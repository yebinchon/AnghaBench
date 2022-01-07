; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_rrip_add_NM.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660_rrip_add_NM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.ISO_SUSP_ATTRIBUTES = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i32*, i32* }

@SUSP_TYPE_RRIP = common dso_local global i32 0, align 4
@SUSP_ENTRY_RRIP_NM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"NM\00", align 1
@SUSP_LOC_ENTRY = common dso_local global i32 0, align 4
@RRIP_NM_FLAGS_NONE = common dso_local global i32 0, align 4
@RRIP_NM_FLAGS_CONTINUE = common dso_local global i32 0, align 4
@rr_ll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cd9660_rrip_add_NM(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ISO_SUSP_ATTRIBUTES*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %77

13:                                               ; preds = %10
  %14 = load i32, i32* @SUSP_TYPE_RRIP, align 4
  %15 = load i32, i32* @SUSP_ENTRY_RRIP_NM, align 4
  %16 = load i32, i32* @SUSP_LOC_ENTRY, align 4
  %17 = call %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32 %14, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.ISO_SUSP_ATTRIBUTES* %17, %struct.ISO_SUSP_ATTRIBUTES** %8, align 8
  %18 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %8, align 8
  %19 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @RRIP_NM_FLAGS_NONE, align 4
  %27 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %8, align 8
  %28 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %26, i32* %33, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strlen(i8* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 249
  br i1 %37, label %38, label %47

38:                                               ; preds = %13
  store i32 249, i32* %6, align 4
  %39 = load i32, i32* @RRIP_NM_FLAGS_CONTINUE, align 4
  %40 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %8, align 8
  %41 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %39, i32* %46, align 4
  br label %48

47:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %8, align 8
  %50 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @memcpy(i32 %54, i8* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 5, %58
  %60 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %8, align 8
  %61 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %59, i32* %67, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %8, align 8
  %71 = load i32, i32* @rr_ll, align 4
  %72 = call i32 @TAILQ_INSERT_TAIL(i32* %69, %struct.ISO_SUSP_ATTRIBUTES* %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8
  br label %10

77:                                               ; preds = %10
  ret void
}

declare dso_local %struct.ISO_SUSP_ATTRIBUTES* @cd9660node_susp_create_node(i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ISO_SUSP_ATTRIBUTES*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
