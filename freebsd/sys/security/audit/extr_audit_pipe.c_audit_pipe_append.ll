; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_pipe = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.audit_pipe_entry = type { i32, i32* }

@audit_pipe_drops = common dso_local global i32 0, align 4
@M_AUDIT_PIPE_ENTRY = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ape_queue = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@AUDIT_PIPE_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_pipe*, i8*, i32)* @audit_pipe_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_pipe_append(%struct.audit_pipe* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.audit_pipe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.audit_pipe_entry*, align 8
  store %struct.audit_pipe* %0, %struct.audit_pipe** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %9 = call i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe* %8)
  %10 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %11 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %14 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %19 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @audit_pipe_drops, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @audit_pipe_drops, align 4
  br label %115

24:                                               ; preds = %3
  %25 = load i32, i32* @M_AUDIT_PIPE_ENTRY, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @malloc(i32 16, i32 %25, i32 %28)
  %30 = bitcast i8* %29 to %struct.audit_pipe_entry*
  store %struct.audit_pipe_entry* %30, %struct.audit_pipe_entry** %7, align 8
  %31 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %7, align 8
  %32 = icmp eq %struct.audit_pipe_entry* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %35 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @audit_pipe_drops, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @audit_pipe_drops, align 4
  br label %115

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @M_AUDIT_PIPE_ENTRY, align 4
  %43 = load i32, i32* @M_NOWAIT, align 4
  %44 = call i8* @malloc(i32 %41, i32 %42, i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %7, align 8
  %47 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %7, align 8
  %49 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %7, align 8
  %54 = load i32, i32* @M_AUDIT_PIPE_ENTRY, align 4
  %55 = call i32 @free(%struct.audit_pipe_entry* %53, i32 %54)
  %56 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %57 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @audit_pipe_drops, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @audit_pipe_drops, align 4
  br label %115

62:                                               ; preds = %40
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %7, align 8
  %65 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @bcopy(i8* %63, i32* %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %7, align 8
  %71 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %73 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %72, i32 0, i32 8
  %74 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %7, align 8
  %75 = load i32, i32* @ape_queue, align 4
  %76 = call i32 @TAILQ_INSERT_TAIL(i32* %73, %struct.audit_pipe_entry* %74, i32 %75)
  %77 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %78 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %82 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.audit_pipe_entry*, %struct.audit_pipe_entry** %7, align 8
  %86 = getelementptr inbounds %struct.audit_pipe_entry, %struct.audit_pipe_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %89 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %93 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %92, i32 0, i32 6
  %94 = load i32, i32* @PSOCK, align 4
  %95 = call i32 @selwakeuppri(%struct.TYPE_2__* %93, i32 %94)
  %96 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %97 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @KNOTE_LOCKED(i32* %98, i32 0)
  %100 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %101 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AUDIT_PIPE_ASYNC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %62
  %107 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %108 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %107, i32 0, i32 5
  %109 = load i32, i32* @SIGIO, align 4
  %110 = call i32 @pgsigio(i32* %108, i32 %109, i32 0)
  br label %111

111:                                              ; preds = %106, %62
  %112 = load %struct.audit_pipe*, %struct.audit_pipe** %4, align 8
  %113 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %112, i32 0, i32 4
  %114 = call i32 @cv_broadcast(i32* %113)
  br label %115

115:                                              ; preds = %111, %52, %33, %17
  ret void
}

declare dso_local i32 @AUDIT_PIPE_LOCK_ASSERT(%struct.audit_pipe*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.audit_pipe_entry*, i32) #1

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.audit_pipe_entry*, i32) #1

declare dso_local i32 @selwakeuppri(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @pgsigio(i32*, i32, i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
