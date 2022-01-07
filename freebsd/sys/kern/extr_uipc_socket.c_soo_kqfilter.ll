; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soo_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soo_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.knote = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.socket* }
%struct.socket = type { %struct.sockbuf, %struct.TYPE_6__, %struct.sockbuf, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.knlist }
%struct.knlist = type { i32 }
%struct.sockbuf = type { i32 }
%struct.TYPE_5__ = type { %struct.knlist }

@soread_filtops = common dso_local global i32 0, align 4
@sowrite_filtops = common dso_local global i32 0, align 4
@soempty_filtops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SB_KNOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soo_kqfilter(%struct.file* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockbuf*, align 8
  %8 = alloca %struct.knlist*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %9 = load %struct.knote*, %struct.knote** %5, align 8
  %10 = getelementptr inbounds %struct.knote, %struct.knote* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %13, %struct.socket** %6, align 8
  %14 = load %struct.knote*, %struct.knote** %5, align 8
  %15 = getelementptr inbounds %struct.knote, %struct.knote* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %41 [
    i32 129, label %17
    i32 128, label %25
    i32 130, label %33
  ]

17:                                               ; preds = %2
  %18 = load %struct.knote*, %struct.knote** %5, align 8
  %19 = getelementptr inbounds %struct.knote, %struct.knote* %18, i32 0, i32 1
  store i32* @soread_filtops, i32** %19, align 8
  %20 = load %struct.socket*, %struct.socket** %6, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.knlist* %22, %struct.knlist** %8, align 8
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 2
  store %struct.sockbuf* %24, %struct.sockbuf** %7, align 8
  br label %43

25:                                               ; preds = %2
  %26 = load %struct.knote*, %struct.knote** %5, align 8
  %27 = getelementptr inbounds %struct.knote, %struct.knote* %26, i32 0, i32 1
  store i32* @sowrite_filtops, i32** %27, align 8
  %28 = load %struct.socket*, %struct.socket** %6, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.knlist* %30, %struct.knlist** %8, align 8
  %31 = load %struct.socket*, %struct.socket** %6, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  store %struct.sockbuf* %32, %struct.sockbuf** %7, align 8
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.knote*, %struct.knote** %5, align 8
  %35 = getelementptr inbounds %struct.knote, %struct.knote* %34, i32 0, i32 1
  store i32* @soempty_filtops, i32** %35, align 8
  %36 = load %struct.socket*, %struct.socket** %6, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.knlist* %38, %struct.knlist** %8, align 8
  %39 = load %struct.socket*, %struct.socket** %6, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  store %struct.sockbuf* %40, %struct.sockbuf** %7, align 8
  br label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %69

43:                                               ; preds = %33, %25, %17
  %44 = load %struct.socket*, %struct.socket** %6, align 8
  %45 = call i32 @SOCK_LOCK(%struct.socket* %44)
  %46 = load %struct.socket*, %struct.socket** %6, align 8
  %47 = call i64 @SOLISTENING(%struct.socket* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.knlist*, %struct.knlist** %8, align 8
  %51 = load %struct.knote*, %struct.knote** %5, align 8
  %52 = call i32 @knlist_add(%struct.knlist* %50, %struct.knote* %51, i32 1)
  br label %66

53:                                               ; preds = %43
  %54 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %55 = call i32 @SOCKBUF_LOCK(%struct.sockbuf* %54)
  %56 = load %struct.knlist*, %struct.knlist** %8, align 8
  %57 = load %struct.knote*, %struct.knote** %5, align 8
  %58 = call i32 @knlist_add(%struct.knlist* %56, %struct.knote* %57, i32 1)
  %59 = load i32, i32* @SB_KNOTE, align 4
  %60 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %61 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %65 = call i32 @SOCKBUF_UNLOCK(%struct.sockbuf* %64)
  br label %66

66:                                               ; preds = %53, %49
  %67 = load %struct.socket*, %struct.socket** %6, align 8
  %68 = call i32 @SOCK_UNLOCK(%struct.socket* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %41
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i64 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @knlist_add(%struct.knlist*, %struct.knote*, i32) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.sockbuf*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.sockbuf*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
