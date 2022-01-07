; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_port_new_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_port_new_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i8*, i32, i32, i32, %struct.target*, %struct.conf* }
%struct.conf = type { i32 }
%struct.target = type { i32, i32 }
%struct.pport = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ioctl/%d/%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"duplicate port \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@p_next = common dso_local global i32 0, align 4
@p_ts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.port* @port_new_ioctl(%struct.conf* %0, %struct.target* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.port*, align 8
  %6 = alloca %struct.conf*, align 8
  %7 = alloca %struct.target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pport*, align 8
  %11 = alloca %struct.port*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.conf* %0, %struct.conf** %6, align 8
  store %struct.target* %1, %struct.target** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (i8**, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.port* null, %struct.port** %5, align 8
  br label %92

22:                                               ; preds = %4
  %23 = load %struct.conf*, %struct.conf** %6, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call %struct.pport* @pport_find(%struct.conf* %23, i8* %24)
  store %struct.pport* %25, %struct.pport** %10, align 8
  %26 = load %struct.pport*, %struct.pport** %10, align 8
  %27 = icmp ne %struct.pport* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load %struct.conf*, %struct.conf** %6, align 8
  %32 = load %struct.target*, %struct.target** %7, align 8
  %33 = load %struct.pport*, %struct.pport** %10, align 8
  %34 = call %struct.port* @port_new_pp(%struct.conf* %31, %struct.target* %32, %struct.pport* %33)
  store %struct.port* %34, %struct.port** %5, align 8
  br label %92

35:                                               ; preds = %22
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.target*, %struct.target** %7, align 8
  %38 = getelementptr inbounds %struct.target, %struct.target* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8**, i8*, ...) @asprintf(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32, i32* %14, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %35
  %48 = load %struct.conf*, %struct.conf** %6, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32* @port_find(%struct.conf* %48, i8* %49)
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @log_warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @free(i8* %55)
  store %struct.port* null, %struct.port** %5, align 8
  br label %92

57:                                               ; preds = %47
  %58 = call %struct.port* @calloc(i32 1, i32 40)
  store %struct.port* %58, %struct.port** %11, align 8
  %59 = load %struct.port*, %struct.port** %11, align 8
  %60 = icmp eq %struct.port* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.conf*, %struct.conf** %6, align 8
  %65 = load %struct.port*, %struct.port** %11, align 8
  %66 = getelementptr inbounds %struct.port, %struct.port* %65, i32 0, i32 5
  store %struct.conf* %64, %struct.conf** %66, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.port*, %struct.port** %11, align 8
  %69 = getelementptr inbounds %struct.port, %struct.port* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.port*, %struct.port** %11, align 8
  %71 = getelementptr inbounds %struct.port, %struct.port* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.port*, %struct.port** %11, align 8
  %74 = getelementptr inbounds %struct.port, %struct.port* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.port*, %struct.port** %11, align 8
  %77 = getelementptr inbounds %struct.port, %struct.port* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.conf*, %struct.conf** %6, align 8
  %79 = getelementptr inbounds %struct.conf, %struct.conf* %78, i32 0, i32 0
  %80 = load %struct.port*, %struct.port** %11, align 8
  %81 = load i32, i32* @p_next, align 4
  %82 = call i32 @TAILQ_INSERT_TAIL(i32* %79, %struct.port* %80, i32 %81)
  %83 = load %struct.target*, %struct.target** %7, align 8
  %84 = getelementptr inbounds %struct.target, %struct.target* %83, i32 0, i32 0
  %85 = load %struct.port*, %struct.port** %11, align 8
  %86 = load i32, i32* @p_ts, align 4
  %87 = call i32 @TAILQ_INSERT_TAIL(i32* %84, %struct.port* %85, i32 %86)
  %88 = load %struct.target*, %struct.target** %7, align 8
  %89 = load %struct.port*, %struct.port** %11, align 8
  %90 = getelementptr inbounds %struct.port, %struct.port* %89, i32 0, i32 4
  store %struct.target* %88, %struct.target** %90, align 8
  %91 = load %struct.port*, %struct.port** %11, align 8
  store %struct.port* %91, %struct.port** %5, align 8
  br label %92

92:                                               ; preds = %63, %52, %28, %20
  %93 = load %struct.port*, %struct.port** %5, align 8
  ret %struct.port* %93
}

declare dso_local i32 @asprintf(i8**, i8*, ...) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local %struct.pport* @pport_find(%struct.conf*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.port* @port_new_pp(%struct.conf*, %struct.target*, %struct.pport*) #1

declare dso_local i32* @port_find(%struct.conf*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local %struct.port* @calloc(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
