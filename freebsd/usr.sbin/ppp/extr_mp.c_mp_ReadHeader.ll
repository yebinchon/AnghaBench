; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_ReadHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_ReadHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp = type { i64 }
%struct.mbuf = type { i32 }
%struct.mp_header = type { i32, i32, i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Oops - MP header without required zero bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp*, %struct.mbuf*, %struct.mp_header*)* @mp_ReadHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_ReadHeader(%struct.mp* %0, %struct.mbuf* %1, %struct.mp_header* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mp_header*, align 8
  %8 = alloca i32, align 4
  store %struct.mp* %0, %struct.mp** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.mp_header* %2, %struct.mp_header** %7, align 8
  %9 = load %struct.mp*, %struct.mp** %5, align 8
  %10 = getelementptr inbounds %struct.mp, %struct.mp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = call i32 @MBUF_CTOP(%struct.mbuf* %14)
  %16 = call i32 @ua_ntohs(i32 %15, i32* %8)
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 12288
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @LogWARN, align 4
  %22 = call i32 @log_Printf(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %79

23:                                               ; preds = %13
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 32768
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %30 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 16384
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %37 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 4095
  %40 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %41 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  store i32 2, i32* %4, align 4
  br label %79

42:                                               ; preds = %3
  %43 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %44 = call i32 @MBUF_CTOP(%struct.mbuf* %43)
  %45 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %46 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %45, i32 0, i32 2
  %47 = call i32 @ua_ntohl(i32 %44, i32* %46)
  %48 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %49 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1056964608
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @LogWARN, align 4
  %55 = call i32 @log_Printf(i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %79

56:                                               ; preds = %42
  %57 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %58 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, -2147483648
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %65 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %67 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 1073741824
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %74 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.mp_header*, %struct.mp_header** %7, align 8
  %76 = getelementptr inbounds %struct.mp_header, %struct.mp_header* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 16777215
  store i32 %78, i32* %76, align 4
  store i32 4, i32* %4, align 4
  br label %79

79:                                               ; preds = %56, %53, %23, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @ua_ntohs(i32, i32*) #1

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @ua_ntohl(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
