; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msq_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_msg.c_msq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msqid_kernel = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i64, %struct.msg* }
%struct.msg = type { %struct.msg*, i64 }

@RACCT_NMSGQ = common dso_local global i32 0, align 4
@RACCT_MSGQQUEUED = common dso_local global i32 0, align 4
@RACCT_MSGQSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"msg_cbytes is screwed up\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"msg_qnum is screwed up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msqid_kernel*)* @msq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msq_remove(%struct.msqid_kernel* %0) #0 {
  %2 = alloca %struct.msqid_kernel*, align 8
  %3 = alloca %struct.msg*, align 8
  %4 = alloca %struct.msg*, align 8
  store %struct.msqid_kernel* %0, %struct.msqid_kernel** %2, align 8
  %5 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %6 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* @RACCT_NMSGQ, align 4
  %9 = call i32 @racct_sub_cred(i32* %7, i32 %8, i32 1)
  %10 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %11 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @RACCT_MSGQQUEUED, align 4
  %14 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %15 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @racct_sub_cred(i32* %12, i32 %13, i32 %17)
  %19 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %20 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @RACCT_MSGQSIZE, align 4
  %23 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %24 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @racct_sub_cred(i32* %21, i32 %22, i32 %26)
  %28 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %29 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @crfree(i32* %30)
  %32 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %33 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %35 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load %struct.msg*, %struct.msg** %36, align 8
  store %struct.msg* %37, %struct.msg** %3, align 8
  br label %38

38:                                               ; preds = %41, %1
  %39 = load %struct.msg*, %struct.msg** %3, align 8
  %40 = icmp ne %struct.msg* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load %struct.msg*, %struct.msg** %3, align 8
  %43 = getelementptr inbounds %struct.msg, %struct.msg* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %46 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %44
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %53 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.msg*, %struct.msg** %3, align 8
  store %struct.msg* %57, %struct.msg** %4, align 8
  %58 = load %struct.msg*, %struct.msg** %3, align 8
  %59 = getelementptr inbounds %struct.msg, %struct.msg* %58, i32 0, i32 0
  %60 = load %struct.msg*, %struct.msg** %59, align 8
  store %struct.msg* %60, %struct.msg** %3, align 8
  %61 = load %struct.msg*, %struct.msg** %4, align 8
  %62 = call i32 @msg_freehdr(%struct.msg* %61)
  br label %38

63:                                               ; preds = %38
  %64 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %65 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %63
  %72 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %73 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %71
  %80 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %81 = getelementptr inbounds %struct.msqid_kernel, %struct.msqid_kernel* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.msqid_kernel*, %struct.msqid_kernel** %2, align 8
  %84 = call i32 @wakeup(%struct.msqid_kernel* %83)
  ret void
}

declare dso_local i32 @racct_sub_cred(i32*, i32, i32) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @msg_freehdr(%struct.msg*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @wakeup(%struct.msqid_kernel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
