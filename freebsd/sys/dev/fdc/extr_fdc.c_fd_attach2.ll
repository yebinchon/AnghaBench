; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_attach2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fd_attach2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_data = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.fd_data*, i32 }

@g_fd_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fd%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @fd_attach2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_attach2(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd_data*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.fd_data*
  store %struct.fd_data* %7, %struct.fd_data** %5, align 8
  %8 = load %struct.fd_data*, %struct.fd_data** %5, align 8
  %9 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call %struct.TYPE_3__* @g_new_geomf(i32* @g_fd_class, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.fd_data*, %struct.fd_data** %5, align 8
  %14 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %13, i32 0, i32 1
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %14, align 8
  %15 = load %struct.fd_data*, %struct.fd_data** %5, align 8
  %16 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.fd_data*, %struct.fd_data** %5, align 8
  %19 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @g_new_providerf(%struct.TYPE_3__* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.fd_data*, %struct.fd_data** %5, align 8
  %25 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.fd_data*, %struct.fd_data** %5, align 8
  %27 = load %struct.fd_data*, %struct.fd_data** %5, align 8
  %28 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store %struct.fd_data* %26, %struct.fd_data** %30, align 8
  %31 = load %struct.fd_data*, %struct.fd_data** %5, align 8
  %32 = getelementptr inbounds %struct.fd_data, %struct.fd_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @g_error_provider(i32 %33, i32 0)
  ret void
}

declare dso_local %struct.TYPE_3__* @g_new_geomf(i32*, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @g_new_providerf(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @g_error_provider(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
