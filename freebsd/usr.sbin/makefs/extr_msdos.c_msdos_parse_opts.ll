; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_msdos.c_msdos_parse_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_msdos.c_msdos_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.msdos_options* }
%struct.TYPE_6__ = type { i32 }
%struct.msdos_options = type { i32, i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@DEBUG_FS_PARSE_OPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"msdos_parse_opts: got `%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"volume_id\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"media_descriptor\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"hidden_sectors\00", align 1
@stampst = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msdos_parse_opts(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.msdos_options*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.msdos_options*, %struct.msdos_options** %10, align 8
  store %struct.msdos_options* %11, %struct.msdos_options** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %7, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.msdos_options*, %struct.msdos_options** %6, align 8
  %24 = icmp ne %struct.msdos_options* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @debug, align 4
  %28 = load i32, i32* @DEBUG_FS_PARSE_OPTS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @set_option(%struct.TYPE_6__* %35, i8* %36, i32* null, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %90

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @strcmp(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.msdos_options*, %struct.msdos_options** %6, align 8
  %53 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %80

54:                                               ; preds = %42
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @strcmp(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.msdos_options*, %struct.msdos_options** %6, align 8
  %65 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %79

66:                                               ; preds = %54
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @strcmp(i32 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.msdos_options*, %struct.msdos_options** %6, align 8
  %77 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %66
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stampst, i32 0, i32 1), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.msdos_options*, %struct.msdos_options** %6, align 8
  %85 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %84, i32 0, i32 3
  store i32 1, i32* %85, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stampst, i32 0, i32 0), align 8
  %87 = load %struct.msdos_options*, %struct.msdos_options** %6, align 8
  %88 = getelementptr inbounds %struct.msdos_options, %struct.msdos_options* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %80
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %40
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @set_option(%struct.TYPE_6__*, i8*, i32*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
