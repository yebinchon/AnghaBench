; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendstream_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendstream_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i64, i64, i32, i32* }
%struct.mbuf = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"sbappendstream 0\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sbappendstream 1\00", align 1
@PRUS_NOTREADY = common dso_local global i32 0, align 4
@M_NOTREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbappendstream_locked(%struct.sockbuf* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.sockbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %8 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf* %7)
  %9 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %16 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %19 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %25 = call i32 @SBLASTMBUFCHK(%struct.sockbuf* %24)
  %26 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PRUS_NOTREADY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @M_NOTREADY, align 4
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = call i32 @m_demote(%struct.mbuf* %26, i32 1, i32 %35)
  %37 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %40 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sbcompress(%struct.sockbuf* %37, %struct.mbuf* %38, i32 %41)
  %43 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %44 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %47 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.sockbuf*, %struct.sockbuf** %4, align 8
  %49 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %48)
  ret void
}

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.sockbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SBLASTMBUFCHK(%struct.sockbuf*) #1

declare dso_local i32 @m_demote(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @sbcompress(%struct.sockbuf*, %struct.mbuf*, i32) #1

declare dso_local i32 @SBLASTRECORDCHK(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
