; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_configfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_configfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"config.c.new\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SBUF_AUTOEXTEND = common dso_local global i32 0, align 4
@filebased = common dso_local global i64 0, align 8
@kernconfstr = common dso_local global i8* null, align 8
@KERNCONFTAG = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Something went terribly wrong!\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"config.c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @configfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configfile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.sbuf*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @PREFIX, align 4
  %5 = call i32 @cfgfile_add(i32 %4)
  %6 = call i8* @path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %16 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i32 2048, i32 %15)
  store %struct.sbuf* %16, %struct.sbuf** %2, align 8
  %17 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %18 = icmp ne %struct.sbuf* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %22 = call i32 @sbuf_clear(%struct.sbuf* %21)
  %23 = load i64, i64* @filebased, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %27 = call i32 @configfile_filebased(%struct.sbuf* %26)
  br label %31

28:                                               ; preds = %14
  %29 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %30 = call i32 @configfile_dynamic(%struct.sbuf* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %33 = call i32 @sbuf_finish(%struct.sbuf* %32)
  %34 = load i8*, i8** @kernconfstr, align 8
  %35 = load i32, i32* @KERNCONFTAG, align 4
  %36 = call i8* @strstr(i8* %34, i32 %35)
  store i8* %36, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  %41 = call i32 @errx(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i8*, i8** %3, align 8
  store i8 0, i8* %43, align 1
  %44 = load i32*, i32** %1, align 8
  %45 = load i8*, i8** @kernconfstr, align 8
  %46 = call i32 @fprintf(i32* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %1, align 8
  %48 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %49 = call i8* @sbuf_data(%struct.sbuf* %48)
  %50 = call i32 @fprintf(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @KERNCONFTAG, align 4
  %52 = call i32 @strlen(i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %3, align 8
  %56 = load i32*, i32** %1, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @fprintf(i32* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load %struct.sbuf*, %struct.sbuf** %2, align 8
  %60 = call i32 @sbuf_delete(%struct.sbuf* %59)
  %61 = load i32*, i32** %1, align 8
  %62 = call i32 @fclose(i32* %61)
  %63 = call i8* @path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %64 = call i8* @path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 @moveifchanged(i8* %63, i8* %64)
  %66 = call i32 (...) @cfgfile_removeall()
  ret void
}

declare dso_local i32 @cfgfile_add(i32) #1

declare dso_local i8* @path(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local %struct.sbuf* @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

declare dso_local i32 @configfile_filebased(%struct.sbuf*) #1

declare dso_local i32 @configfile_dynamic(%struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @moveifchanged(i8*, i8*) #1

declare dso_local i32 @cfgfile_removeall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
