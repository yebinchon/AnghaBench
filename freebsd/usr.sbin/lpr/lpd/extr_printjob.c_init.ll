; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpd/extr_printjob.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i32, i32, i32, i32 }

@width = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@length = common dso_local global i32* null, align 8
@pxwidth = common dso_local global i32* null, align 8
@pxlength = common dso_local global i32* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init(%struct.printer* %0) #0 {
  %2 = alloca %struct.printer*, align 8
  %3 = alloca i8*, align 8
  store %struct.printer* %0, %struct.printer** %2, align 8
  %4 = load i32*, i32** @width, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 2
  %6 = load %struct.printer*, %struct.printer** %2, align 8
  %7 = getelementptr inbounds %struct.printer, %struct.printer* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @sprintf(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** @length, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load %struct.printer*, %struct.printer** %2, align 8
  %13 = getelementptr inbounds %struct.printer, %struct.printer* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sprintf(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** @pxwidth, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load %struct.printer*, %struct.printer** %2, align 8
  %19 = getelementptr inbounds %struct.printer, %struct.printer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** @pxlength, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load %struct.printer*, %struct.printer** %2, align 8
  %25 = getelementptr inbounds %struct.printer, %struct.printer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sprintf(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.printer*, %struct.printer** %2, align 8
  %29 = call i8* @checkremote(%struct.printer* %28)
  store i8* %29, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @LOG_WARNING, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @syslog(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @free(i8* %35)
  br label %37

37:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i8* @checkremote(%struct.printer*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
