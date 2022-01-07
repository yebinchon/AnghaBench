; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendaddr_locked_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_sockbuf.c_sbappendaddr_locked_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { %struct.mbuf* }
%struct.sockaddr = type { i64 }
%struct.mbuf = type { i64, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32* }

@MLEN = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_SONAME = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockbuf*, %struct.sockaddr*, %struct.mbuf*, %struct.mbuf*, %struct.mbuf*)* @sbappendaddr_locked_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbappendaddr_locked_internal(%struct.sockbuf* %0, %struct.sockaddr* %1, %struct.mbuf* %2, %struct.mbuf* %3, %struct.mbuf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockbuf*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  store %struct.sockbuf* %0, %struct.sockbuf** %7, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MLEN, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %106

21:                                               ; preds = %5
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = load i32, i32* @MT_SONAME, align 4
  %24 = call %struct.mbuf* @m_get(i32 %22, i32 %23)
  store %struct.mbuf* %24, %struct.mbuf** %12, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %26 = icmp eq %struct.mbuf* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %106

28:                                               ; preds = %21
  %29 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %36 = load i32, i32* @caddr_t, align 4
  %37 = call i32 @mtod(%struct.mbuf* %35, i32 %36)
  %38 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @bcopy(%struct.sockaddr* %34, i32 %37, i64 %40)
  %42 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %43 = icmp ne %struct.mbuf* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %28
  %45 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %46 = call i32 @m_clrprotoflags(%struct.mbuf* %45)
  %47 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %48 = call i32 @m_tag_delete_chain(%struct.mbuf* %47, i32* null)
  %49 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %44, %28
  %65 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %66 = icmp ne %struct.mbuf* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 1
  store %struct.mbuf* %68, %struct.mbuf** %70, align 8
  br label %73

71:                                               ; preds = %64
  %72 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %72, %struct.mbuf** %10, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 1
  store %struct.mbuf* %74, %struct.mbuf** %76, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %77, %struct.mbuf** %13, align 8
  br label %78

78:                                               ; preds = %87, %73
  %79 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 1
  %81 = load %struct.mbuf*, %struct.mbuf** %80, align 8
  %82 = icmp ne %struct.mbuf* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %86 = call i32 @sballoc(%struct.sockbuf* %84, %struct.mbuf* %85)
  br label %87

87:                                               ; preds = %83
  %88 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 1
  %90 = load %struct.mbuf*, %struct.mbuf** %89, align 8
  store %struct.mbuf* %90, %struct.mbuf** %13, align 8
  br label %78

91:                                               ; preds = %78
  %92 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %93 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %94 = call i32 @sballoc(%struct.sockbuf* %92, %struct.mbuf* %93)
  %95 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %95, %struct.mbuf** %14, align 8
  %96 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %98 = call i32 @SBLINKRECORD(%struct.sockbuf* %96, %struct.mbuf* %97)
  %99 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %100 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %101 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %100, i32 0, i32 0
  store %struct.mbuf* %99, %struct.mbuf** %101, align 8
  %102 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %103 = call i32 @SBLASTMBUFCHK(%struct.sockbuf* %102)
  %104 = load %struct.sockbuf*, %struct.sockbuf** %7, align 8
  %105 = call i32 @SBLASTRECORDCHK(%struct.sockbuf* %104)
  store i32 1, i32* %6, align 4
  br label %106

106:                                              ; preds = %91, %27, %20
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, i32, i64) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_clrprotoflags(%struct.mbuf*) #1

declare dso_local i32 @m_tag_delete_chain(%struct.mbuf*, i32*) #1

declare dso_local i32 @sballoc(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @SBLINKRECORD(%struct.sockbuf*, %struct.mbuf*) #1

declare dso_local i32 @SBLASTMBUFCHK(%struct.sockbuf*) #1

declare dso_local i32 @SBLASTRECORDCHK(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
