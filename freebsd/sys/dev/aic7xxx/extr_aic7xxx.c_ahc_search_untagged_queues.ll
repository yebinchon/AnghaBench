; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_search_untagged_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_search_untagged_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ahc_softc = type { i32, %struct.scb_tailq* }
%struct.scb_tailq = type { i32 }
%struct.scb = type { i32, i32* }

@AHC_SCB_BTT = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@links = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SCB_ACTIVE = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@SCB_UNTAGGEDQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_search_untagged_queues(%struct.ahc_softc* %0, i32* %1, i32 %2, i8 signext %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ahc_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scb*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scb_tailq*, align 8
  %20 = alloca %struct.scb*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8 %3, i8* %11, align 1
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %23, 130
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %27 = call i32 @ahc_freeze_untagged_queues(%struct.ahc_softc* %26)
  br label %28

28:                                               ; preds = %25, %7
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %30 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AHC_SCB_BTT, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  store i32 16, i32* %16, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %18, align 4
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 66
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %18, align 4
  %46 = add nsw i32 %45, 8
  store i32 %46, i32* %18, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %16, align 4
  br label %50

50:                                               ; preds = %47, %35
  br label %52

51:                                               ; preds = %28
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %142, %52
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %145

57:                                               ; preds = %53
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %59 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %58, i32 0, i32 1
  %60 = load %struct.scb_tailq*, %struct.scb_tailq** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.scb_tailq, %struct.scb_tailq* %60, i64 %62
  store %struct.scb_tailq* %63, %struct.scb_tailq** %19, align 8
  %64 = load %struct.scb_tailq*, %struct.scb_tailq** %19, align 8
  %65 = call %struct.scb* @TAILQ_FIRST(%struct.scb_tailq* %64)
  store %struct.scb* %65, %struct.scb** %20, align 8
  br label %66

66:                                               ; preds = %140, %100, %80, %57
  %67 = load %struct.scb*, %struct.scb** %20, align 8
  %68 = icmp ne %struct.scb* %67, null
  br i1 %68, label %69, label %141

69:                                               ; preds = %66
  %70 = load %struct.scb*, %struct.scb** %20, align 8
  store %struct.scb* %70, %struct.scb** %15, align 8
  %71 = load %struct.scb*, %struct.scb** %15, align 8
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @links, i32 0, i32 0), align 4
  %73 = call %struct.scb* @TAILQ_NEXT(%struct.scb* %71, i32 %72)
  store %struct.scb* %73, %struct.scb** %20, align 8
  %74 = load %struct.scb*, %struct.scb** %15, align 8
  %75 = getelementptr inbounds %struct.scb, %struct.scb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SCB_ACTIVE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %66

81:                                               ; preds = %69
  %82 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %83 = load %struct.scb*, %struct.scb** %15, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i8, i8* %11, align 1
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @SCB_LIST_NULL, align 4
  %88 = load i32, i32* @ROLE_INITIATOR, align 4
  %89 = call i64 @ahc_match_scb(%struct.ahc_softc* %82, %struct.scb* %83, i32 %84, i8 signext %85, i32 %86, i32 %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %81
  %92 = load i32*, i32** %9, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.scb*, %struct.scb** %15, align 8
  %97 = getelementptr inbounds %struct.scb, %struct.scb* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94, %81
  br label %66

101:                                              ; preds = %94, %91
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %14, align 4
  switch i32 %104, label %140 [
    i32 130, label %105
    i32 128, label %128
    i32 129, label %139
  ]

105:                                              ; preds = %101
  %106 = load %struct.scb*, %struct.scb** %15, align 8
  %107 = call i32 @aic_get_transaction_status(%struct.scb* %106)
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* @CAM_REQ_INPROG, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load %struct.scb*, %struct.scb** %15, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @aic_set_transaction_status(%struct.scb* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %105
  %116 = load %struct.scb*, %struct.scb** %15, align 8
  %117 = call i32 @aic_get_transaction_status(%struct.scb* %116)
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* @CAM_REQ_CMP, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.scb*, %struct.scb** %15, align 8
  %123 = call i32 @aic_freeze_scb(%struct.scb* %122)
  br label %124

124:                                              ; preds = %121, %115
  %125 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %126 = load %struct.scb*, %struct.scb** %15, align 8
  %127 = call i32 @ahc_done(%struct.ahc_softc* %125, %struct.scb* %126)
  br label %140

128:                                              ; preds = %101
  %129 = load i32, i32* @SCB_UNTAGGEDQ, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.scb*, %struct.scb** %15, align 8
  %132 = getelementptr inbounds %struct.scb, %struct.scb* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.scb_tailq*, %struct.scb_tailq** %19, align 8
  %136 = load %struct.scb*, %struct.scb** %15, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @links, i32 0, i32 0), align 4
  %138 = call i32 @TAILQ_REMOVE(%struct.scb_tailq* %135, %struct.scb* %136, i32 %137)
  br label %140

139:                                              ; preds = %101
  br label %140

140:                                              ; preds = %101, %139, %128, %124
  br label %66

141:                                              ; preds = %66
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %18, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %18, align 4
  br label %53

145:                                              ; preds = %53
  %146 = load i32, i32* %14, align 4
  %147 = icmp eq i32 %146, 130
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.ahc_softc*, %struct.ahc_softc** %8, align 8
  %150 = call i32 @ahc_release_untagged_queues(%struct.ahc_softc* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %17, align 4
  ret i32 %152
}

declare dso_local i32 @ahc_freeze_untagged_queues(%struct.ahc_softc*) #1

declare dso_local %struct.scb* @TAILQ_FIRST(%struct.scb_tailq*) #1

declare dso_local %struct.scb* @TAILQ_NEXT(%struct.scb*, i32) #1

declare dso_local i64 @ahc_match_scb(%struct.ahc_softc*, %struct.scb*, i32, i8 signext, i32, i32, i32) #1

declare dso_local i32 @aic_get_transaction_status(%struct.scb*) #1

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @aic_freeze_scb(%struct.scb*) #1

declare dso_local i32 @ahc_done(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.scb_tailq*, %struct.scb*, i32) #1

declare dso_local i32 @ahc_release_untagged_queues(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
