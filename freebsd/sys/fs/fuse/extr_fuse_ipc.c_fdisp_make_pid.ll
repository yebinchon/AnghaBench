; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdisp_make_pid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdisp_make_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_dispatcher = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fuse_data = type { i32 }
%struct.ucred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_dispatcher*, i32, %struct.fuse_data*, i32, i32, %struct.ucred*)* @fdisp_make_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdisp_make_pid(%struct.fuse_dispatcher* %0, i32 %1, %struct.fuse_data* %2, i32 %3, i32 %4, %struct.ucred* %5) #0 {
  %7 = alloca %struct.fuse_dispatcher*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ucred*, align 8
  store %struct.fuse_dispatcher* %0, %struct.fuse_dispatcher** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.fuse_data* %2, %struct.fuse_data** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.ucred* %5, %struct.ucred** %12, align 8
  %13 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %14 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %19 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @fticket_refresh(%struct.TYPE_4__* %20)
  br label %27

22:                                               ; preds = %6
  %23 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %24 = call %struct.TYPE_4__* @fuse_ticket_fetch(%struct.fuse_data* %23)
  %25 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %26 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %25, i32 0, i32 1
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %29 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %33 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %36 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %39 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @FUSE_DIMALLOC(i32* %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %43 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %46 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %7, align 8
  %51 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.ucred*, %struct.ucred** %12, align 8
  %55 = call i32 @fuse_setup_ihead(i32 %44, %struct.TYPE_4__* %47, i32 %48, i32 %49, i32 %52, i32 %53, %struct.ucred* %54)
  ret void
}

declare dso_local i32 @fticket_refresh(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @fuse_ticket_fetch(%struct.fuse_data*) #1

declare dso_local i32 @FUSE_DIMALLOC(i32*, i32, i32, i32) #1

declare dso_local i32 @fuse_setup_ihead(i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
