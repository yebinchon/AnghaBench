; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_socket.c_soo_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.sockbuf, %struct.sockbuf }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.socket*, %struct.stat*)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sockbuf = type { i32, i64 }
%struct.stat = type { i32, i32, i32, i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@S_IFSOCK = common dso_local global i32 0, align 4
@SBS_CANTRCVMORE = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@SBS_CANTSENDMORE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)* @soo_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soo_stat(%struct.file* %0, %struct.stat* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sockbuf*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %9, align 8
  %14 = load %struct.stat*, %struct.stat** %6, align 8
  %15 = ptrtoint %struct.stat* %14 to i32
  %16 = call i32 @bzero(i32 %15, i32 24)
  %17 = load i32, i32* @S_IFSOCK, align 4
  %18 = load %struct.stat*, %struct.stat** %6, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.socket*, %struct.socket** %9, align 8
  %21 = call i32 @SOLISTENING(%struct.socket* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %82, label %23

23:                                               ; preds = %4
  %24 = load %struct.socket*, %struct.socket** %9, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 3
  store %struct.sockbuf* %25, %struct.sockbuf** %10, align 8
  %26 = load %struct.sockbuf*, %struct.sockbuf** %10, align 8
  %27 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %26)
  %28 = load %struct.sockbuf*, %struct.sockbuf** %10, align 8
  %29 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SBS_CANTRCVMORE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = load %struct.sockbuf*, %struct.sockbuf** %10, align 8
  %36 = call i64 @sbavail(%struct.sockbuf* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34, %23
  %39 = load i32, i32* @S_IRUSR, align 4
  %40 = load i32, i32* @S_IRGRP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @S_IROTH, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.stat*, %struct.stat** %6, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %38, %34
  %49 = load %struct.sockbuf*, %struct.sockbuf** %10, align 8
  %50 = call i64 @sbavail(%struct.sockbuf* %49)
  %51 = load %struct.sockbuf*, %struct.sockbuf** %10, align 8
  %52 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = load %struct.stat*, %struct.stat** %6, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load %struct.sockbuf*, %struct.sockbuf** %10, align 8
  %58 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %57)
  %59 = load %struct.socket*, %struct.socket** %9, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 2
  store %struct.sockbuf* %60, %struct.sockbuf** %10, align 8
  %61 = load %struct.sockbuf*, %struct.sockbuf** %10, align 8
  %62 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %61)
  %63 = load %struct.sockbuf*, %struct.sockbuf** %10, align 8
  %64 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SBS_CANTSENDMORE, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %48
  %70 = load i32, i32* @S_IWUSR, align 4
  %71 = load i32, i32* @S_IWGRP, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @S_IWOTH, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.stat*, %struct.stat** %6, align 8
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %69, %48
  %80 = load %struct.sockbuf*, %struct.sockbuf** %10, align 8
  %81 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %80)
  br label %82

82:                                               ; preds = %79, %4
  %83 = load %struct.socket*, %struct.socket** %9, align 8
  %84 = getelementptr inbounds %struct.socket, %struct.socket* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.stat*, %struct.stat** %6, align 8
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.socket*, %struct.socket** %9, align 8
  %91 = getelementptr inbounds %struct.socket, %struct.socket* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.stat*, %struct.stat** %6, align 8
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.socket*, %struct.socket** %9, align 8
  %98 = getelementptr inbounds %struct.socket, %struct.socket* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32 (%struct.socket*, %struct.stat*)*, i32 (%struct.socket*, %struct.stat*)** %102, align 8
  %104 = load %struct.socket*, %struct.socket** %9, align 8
  %105 = load %struct.stat*, %struct.stat** %6, align 8
  %106 = call i32 %103(%struct.socket* %104, %struct.stat* %105)
  ret i32 %106
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.sockbuf*) #1

declare dso_local i64 @sbavail(%struct.sockbuf*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
