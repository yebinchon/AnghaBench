; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.file = type { i32, i64, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.kaudit_record = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.socket = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.inpcb = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@ARG_SOCKINFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_file(%struct.proc* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kaudit_record*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.vnode*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %9, %struct.kaudit_record** %5, align 8
  %10 = load %struct.kaudit_record*, %struct.kaudit_record** %5, align 8
  %11 = icmp eq %struct.kaudit_record* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %109

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %108 [
    i32 128, label %17
    i32 130, label %17
    i32 129, label %30
  ]

17:                                               ; preds = %13, %13
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 2
  %20 = load %struct.vnode*, %struct.vnode** %19, align 8
  store %struct.vnode* %20, %struct.vnode** %8, align 8
  %21 = load %struct.vnode*, %struct.vnode** %8, align 8
  %22 = load i32, i32* @LK_SHARED, align 4
  %23 = load i32, i32* @LK_RETRY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @vn_lock(%struct.vnode* %21, i32 %24)
  %26 = load %struct.vnode*, %struct.vnode** %8, align 8
  %27 = call i32 @audit_arg_vnode1(%struct.vnode* %26)
  %28 = load %struct.vnode*, %struct.vnode** %8, align 8
  %29 = call i32 @VOP_UNLOCK(%struct.vnode* %28, i32 0)
  br label %109

30:                                               ; preds = %13
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.socket*
  store %struct.socket* %34, %struct.socket** %6, align 8
  %35 = load %struct.socket*, %struct.socket** %6, align 8
  %36 = load i32, i32* @PF_INET, align 4
  %37 = call i32 @INP_CHECK_SOCKAF(%struct.socket* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %107

39:                                               ; preds = %30
  %40 = load %struct.socket*, %struct.socket** %6, align 8
  %41 = call i32 @SOCK_LOCK(%struct.socket* %40)
  %42 = load %struct.socket*, %struct.socket** %6, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.kaudit_record*, %struct.kaudit_record** %5, align 8
  %46 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 6
  store i32 %44, i32* %48, align 4
  %49 = load %struct.socket*, %struct.socket** %6, align 8
  %50 = call i32 @INP_SOCKAF(%struct.socket* %49)
  %51 = load %struct.kaudit_record*, %struct.kaudit_record** %5, align 8
  %52 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  store i32 %50, i32* %54, align 4
  %55 = load %struct.socket*, %struct.socket** %6, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kaudit_record*, %struct.kaudit_record** %5, align 8
  %61 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  store i32 %59, i32* %63, align 4
  %64 = load %struct.socket*, %struct.socket** %6, align 8
  %65 = call i32 @SOCK_UNLOCK(%struct.socket* %64)
  %66 = load %struct.socket*, %struct.socket** %6, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.inpcb*
  store %struct.inpcb* %69, %struct.inpcb** %7, align 8
  %70 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %71 = call i32 @INP_RLOCK(%struct.inpcb* %70)
  %72 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %73 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.kaudit_record*, %struct.kaudit_record** %5, align 8
  %77 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i32 %75, i32* %79, align 4
  %80 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %81 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.kaudit_record*, %struct.kaudit_record** %5, align 8
  %85 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 4
  %88 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %89 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.kaudit_record*, %struct.kaudit_record** %5, align 8
  %92 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %96 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.kaudit_record*, %struct.kaudit_record** %5, align 8
  %99 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 4
  %102 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %103 = call i32 @INP_RUNLOCK(%struct.inpcb* %102)
  %104 = load %struct.kaudit_record*, %struct.kaudit_record** %5, align 8
  %105 = load i32, i32* @ARG_SOCKINFO, align 4
  %106 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %104, i32 %105)
  br label %107

107:                                              ; preds = %39, %30
  br label %109

108:                                              ; preds = %13
  br label %109

109:                                              ; preds = %12, %108, %107, %17
  ret void
}

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @audit_arg_vnode1(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @INP_CHECK_SOCKAF(%struct.socket*, i32) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @INP_SOCKAF(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @INP_RLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_RUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
