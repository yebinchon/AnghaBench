; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_filt_soread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_filt_soread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, i32, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.socket* }
%struct.socket = type { i64, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }

@EV_EOF = common dso_local global i32 0, align 4
@SBS_CANTRCVMORE = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@HHOOK_FILT_SOREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @filt_soread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_soread(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.socket*, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.knote*, %struct.knote** %4, align 8
  %8 = getelementptr inbounds %struct.knote, %struct.knote* %7, i32 0, i32 5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %6, align 8
  %12 = load %struct.socket*, %struct.socket** %6, align 8
  %13 = call i64 @SOLISTENING(%struct.socket* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = call i32 @SOCK_LOCK_ASSERT(%struct.socket* %16)
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.knote*, %struct.knote** %4, align 8
  %22 = getelementptr inbounds %struct.knote, %struct.knote* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %15
  %28 = load i32, i32* @EV_EOF, align 4
  %29 = load %struct.knote*, %struct.knote** %4, align 8
  %30 = getelementptr inbounds %struct.knote, %struct.knote* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.socket*, %struct.socket** %6, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.knote*, %struct.knote** %4, align 8
  %37 = getelementptr inbounds %struct.knote, %struct.knote* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  store i32 1, i32* %3, align 4
  br label %116

38:                                               ; preds = %15
  %39 = load %struct.socket*, %struct.socket** %6, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 3
  %41 = call i32 @TAILQ_EMPTY(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %116

45:                                               ; preds = %2
  %46 = load %struct.socket*, %struct.socket** %6, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 1
  %48 = call i32 @SOCKBUF_LOCK_ASSERT(%struct.TYPE_5__* %47)
  %49 = load %struct.socket*, %struct.socket** %6, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 1
  %51 = call i64 @sbavail(%struct.TYPE_5__* %50)
  %52 = load %struct.socket*, %struct.socket** %6, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %51, %55
  %57 = load %struct.knote*, %struct.knote** %4, align 8
  %58 = getelementptr inbounds %struct.knote, %struct.knote* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.socket*, %struct.socket** %6, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SBS_CANTRCVMORE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %45
  %67 = load i32, i32* @EV_EOF, align 4
  %68 = load %struct.knote*, %struct.knote** %4, align 8
  %69 = getelementptr inbounds %struct.knote, %struct.knote* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.socket*, %struct.socket** %6, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.knote*, %struct.knote** %4, align 8
  %76 = getelementptr inbounds %struct.knote, %struct.knote* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  store i32 1, i32* %3, align 4
  br label %116

77:                                               ; preds = %45
  %78 = load %struct.socket*, %struct.socket** %6, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %116

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.knote*, %struct.knote** %4, align 8
  %86 = getelementptr inbounds %struct.knote, %struct.knote* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NOTE_LOWAT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load %struct.knote*, %struct.knote** %4, align 8
  %93 = getelementptr inbounds %struct.knote, %struct.knote* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.knote*, %struct.knote** %4, align 8
  %96 = getelementptr inbounds %struct.knote, %struct.knote* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %116

100:                                              ; preds = %91
  br label %112

101:                                              ; preds = %84
  %102 = load %struct.socket*, %struct.socket** %6, align 8
  %103 = getelementptr inbounds %struct.socket, %struct.socket* %102, i32 0, i32 1
  %104 = call i64 @sbavail(%struct.TYPE_5__* %103)
  %105 = load %struct.socket*, %struct.socket** %6, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %104, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %116

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.socket*, %struct.socket** %6, align 8
  %114 = load i32, i32* @HHOOK_FILT_SOREAD, align 4
  %115 = call i32 @hhook_run_socket(%struct.socket* %113, i32* null, i32 %114)
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %110, %99, %82, %66, %38, %27
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @SOCK_LOCK_ASSERT(%struct.socket*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @SOCKBUF_LOCK_ASSERT(%struct.TYPE_5__*) #1

declare dso_local i64 @sbavail(%struct.TYPE_5__*) #1

declare dso_local i32 @hhook_run_socket(%struct.socket*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
