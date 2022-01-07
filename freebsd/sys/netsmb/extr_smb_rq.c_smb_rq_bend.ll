; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_bend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_bend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"no bcount\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"byte count too large (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_rq_bend(%struct.smb_rq* %0) #0 {
  %2 = alloca %struct.smb_rq*, align 8
  %3 = alloca i32, align 4
  store %struct.smb_rq* %0, %struct.smb_rq** %2, align 8
  %4 = load %struct.smb_rq*, %struct.smb_rq** %2, align 8
  %5 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @SMBERROR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.smb_rq*, %struct.smb_rq** %2, align 8
  %12 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 65535
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i8*, ...) @SMBERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %10
  %21 = load %struct.smb_rq*, %struct.smb_rq** %2, align 8
  %22 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @le16enc(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %8
  ret void
}

declare dso_local i32 @SMBERROR(i8*, ...) #1

declare dso_local i32 @le16enc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
