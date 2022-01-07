; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_make_spool_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_make_spool_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8*, i64, i32 }
%struct.group = type { i64 }
%struct.stat = type { i32 }

@S_IRUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@problems = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s: mkdir %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot locate daemon group\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: cannot change ownership to %ld:%ld\00", align 1
@SPOOL_DIR_MODE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: cannot change mode to %lo\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"stat: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*)* @make_spool_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_spool_dir(%struct.printer* %0) #0 {
  %2 = alloca %struct.printer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.group*, align 8
  %5 = alloca %struct.stat, align 4
  store %struct.printer* %0, %struct.printer** %2, align 8
  %6 = load %struct.printer*, %struct.printer** %2, align 8
  %7 = getelementptr inbounds %struct.printer, %struct.printer* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @S_IRUSR, align 4
  %11 = load i32, i32* @S_IXUSR, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @mkdir(i8* %9, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @problems, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @problems, align 4
  %18 = load %struct.printer*, %struct.printer** %2, align 8
  %19 = getelementptr inbounds %struct.printer, %struct.printer* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %23)
  br label %77

25:                                               ; preds = %1
  %26 = call %struct.group* @getgrnam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.group* %26, %struct.group** %4, align 8
  %27 = load %struct.group*, %struct.group** %4, align 8
  %28 = icmp eq %struct.group* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @problems, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @problems, align 4
  %32 = call i32 @errx(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** %3, align 8
  %35 = load %struct.printer*, %struct.printer** %2, align 8
  %36 = getelementptr inbounds %struct.printer, %struct.printer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.group*, %struct.group** %4, align 8
  %39 = getelementptr inbounds %struct.group, %struct.group* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @chown(i8* %34, i64 %37, i64 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load i32, i32* @problems, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @problems, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = load %struct.printer*, %struct.printer** %2, align 8
  %48 = getelementptr inbounds %struct.printer, %struct.printer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.group*, %struct.group** %4, align 8
  %51 = getelementptr inbounds %struct.group, %struct.group* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %46, i64 %49, i64 %52)
  br label %77

54:                                               ; preds = %33
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* @SPOOL_DIR_MODE, align 8
  %57 = call i64 @chmod(i8* %55, i64 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @problems, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @problems, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = load i64, i64* @SPOOL_DIR_MODE, align 8
  %64 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %62, i64 %63)
  br label %77

65:                                               ; preds = %54
  %66 = load i8*, i8** %3, align 8
  %67 = call i64 @stat(i8* %66, %struct.stat* %5)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* @problems, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @problems, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @err(i32 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.printer*, %struct.printer** %2, align 8
  %76 = call i32 @note_spool_dir(%struct.printer* %75, %struct.stat* %5)
  br label %77

77:                                               ; preds = %74, %59, %43, %15
  ret void
}

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @chown(i8*, i64, i64) #1

declare dso_local i64 @chmod(i8*, i64) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @note_spool_dir(%struct.printer*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
