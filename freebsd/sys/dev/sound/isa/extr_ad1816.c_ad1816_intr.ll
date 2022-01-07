; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_ad1816.c_ad1816_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad1816_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@AD1816_INT = common dso_local global i32 0, align 4
@AD1816_INTRCI = common dso_local global i8 0, align 1
@AD1816_INTRPI = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [21 x i8] c"pcm: stray int (%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pcm: int without reason (%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"pcm: int clear failed (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ad1816_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1816_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ad1816_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ad1816_info*
  store %struct.ad1816_info* %7, %struct.ad1816_info** %3, align 8
  store i8 0, i8* %5, align 1
  %8 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %9 = call i32 @ad1816_lock(%struct.ad1816_info* %8)
  %10 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %11 = load i32, i32* @AD1816_INT, align 4
  %12 = call zeroext i8 @io_rd(%struct.ad1816_info* %10, i32 %11)
  store i8 %12, i8* %4, align 1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @AD1816_INTRCI, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @AD1816_INTRPI, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %14, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load i8, i8* %4, align 1
  %25 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 zeroext %24)
  %26 = load i8, i8* @AD1816_INTRCI, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* @AD1816_INTRPI, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, %30
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %4, align 1
  br label %35

35:                                               ; preds = %23, %1
  %36 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %37 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @sndbuf_runsz(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %35
  %43 = load i8, i8* %4, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @AD1816_INTRCI, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %51 = call i32 @ad1816_unlock(%struct.ad1816_info* %50)
  %52 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %53 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @chn_intr(i32 %55)
  %57 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %58 = call i32 @ad1816_lock(%struct.ad1816_info* %57)
  %59 = load i8, i8* @AD1816_INTRCI, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %5, align 1
  br label %65

65:                                               ; preds = %49, %42, %35
  %66 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %67 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @sndbuf_runsz(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %65
  %73 = load i8, i8* %4, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @AD1816_INTRPI, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %72
  %80 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %81 = call i32 @ad1816_unlock(%struct.ad1816_info* %80)
  %82 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %83 = getelementptr inbounds %struct.ad1816_info, %struct.ad1816_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @chn_intr(i32 %85)
  %87 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %88 = call i32 @ad1816_lock(%struct.ad1816_info* %87)
  %89 = load i8, i8* @AD1816_INTRPI, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* %5, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %5, align 1
  br label %95

95:                                               ; preds = %79, %72, %65
  %96 = load i8, i8* %5, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i8, i8* %4, align 1
  %101 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %100)
  store i8 0, i8* %4, align 1
  br label %110

102:                                              ; preds = %95
  %103 = load i8, i8* %5, align 1
  %104 = zext i8 %103 to i32
  %105 = xor i32 %104, -1
  %106 = load i8, i8* %4, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %4, align 1
  br label %110

110:                                              ; preds = %102, %99
  %111 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %112 = load i32, i32* @AD1816_INT, align 4
  %113 = load i8, i8* %4, align 1
  %114 = call i32 @io_wr(%struct.ad1816_info* %111, i32 %112, i8 zeroext %113)
  %115 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %116 = load i32, i32* @AD1816_INT, align 4
  %117 = call zeroext i8 @io_rd(%struct.ad1816_info* %115, i32 %116)
  store i8 %117, i8* %4, align 1
  %118 = load i8, i8* %4, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = load i8, i8* %4, align 1
  %123 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %122)
  br label %124

124:                                              ; preds = %121, %110
  %125 = load %struct.ad1816_info*, %struct.ad1816_info** %3, align 8
  %126 = call i32 @ad1816_unlock(%struct.ad1816_info* %125)
  ret void
}

declare dso_local i32 @ad1816_lock(%struct.ad1816_info*) #1

declare dso_local zeroext i8 @io_rd(%struct.ad1816_info*, i32) #1

declare dso_local i32 @printf(i8*, i8 zeroext) #1

declare dso_local i64 @sndbuf_runsz(i32) #1

declare dso_local i32 @ad1816_unlock(%struct.ad1816_info*) #1

declare dso_local i32 @chn_intr(i32) #1

declare dso_local i32 @io_wr(%struct.ad1816_info*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
