; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_UpdateSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_UpdateSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.server = type { i32 }
%struct.prompt = type { i32, %struct.prompt* }

@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"server: fdset(r) %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdescriptor*, i32*, i32*, i32*, i32*)* @server_UpdateSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_UpdateSet(%struct.fdescriptor* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.fdescriptor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.server*, align 8
  %12 = alloca %struct.prompt*, align 8
  %13 = alloca i32, align 4
  store %struct.fdescriptor* %0, %struct.fdescriptor** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.fdescriptor*, %struct.fdescriptor** %6, align 8
  %15 = call %struct.server* @descriptor2server(%struct.fdescriptor* %14)
  store %struct.server* %15, %struct.server** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %5
  %19 = load %struct.server*, %struct.server** %11, align 8
  %20 = getelementptr inbounds %struct.server, %struct.server* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.server*, %struct.server** %11, align 8
  %27 = getelementptr inbounds %struct.server, %struct.server* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.server*, %struct.server** %11, align 8
  %33 = getelementptr inbounds %struct.server, %struct.server* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.server*, %struct.server** %11, align 8
  %39 = getelementptr inbounds %struct.server, %struct.server* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @FD_SET(i32 %40, i32* %41)
  %43 = load i32, i32* @LogTIMER, align 4
  %44 = load %struct.server*, %struct.server** %11, align 8
  %45 = getelementptr inbounds %struct.server, %struct.server* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @log_Printf(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %37, %18, %5
  %51 = call %struct.prompt* (...) @log_PromptList()
  store %struct.prompt* %51, %struct.prompt** %12, align 8
  br label %52

52:                                               ; preds = %67, %50
  %53 = load %struct.prompt*, %struct.prompt** %12, align 8
  %54 = icmp ne %struct.prompt* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.prompt*, %struct.prompt** %12, align 8
  %57 = getelementptr inbounds %struct.prompt, %struct.prompt* %56, i32 0, i32 0
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i64 @descriptor_UpdateSet(i32* %57, i32* %58, i32* %59, i32* %60, i32* %61)
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %55
  %68 = load %struct.prompt*, %struct.prompt** %12, align 8
  %69 = getelementptr inbounds %struct.prompt, %struct.prompt* %68, i32 0, i32 1
  %70 = load %struct.prompt*, %struct.prompt** %69, align 8
  store %struct.prompt* %70, %struct.prompt** %12, align 8
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

declare dso_local %struct.server* @descriptor2server(%struct.fdescriptor*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local %struct.prompt* @log_PromptList(...) #1

declare dso_local i64 @descriptor_UpdateSet(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
