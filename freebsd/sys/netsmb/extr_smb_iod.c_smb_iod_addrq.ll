; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_addrq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_addrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { i64, i32, i32, %struct.TYPE_4__*, %struct.smb_vc* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.smb_vc = type { i64, %struct.smbiod* }
%struct.smbiod = type { i64, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SMBR_INTERNAL = common dso_local global i32 0, align 4
@sr_link = common dso_local global i32 0, align 4
@SMBRQ_NOTSENT = common dso_local global i64 0, align 8
@PWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"90sndw\00", align 1
@hz = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@SMBIOD_EV_CONNECT = common dso_local global i32 0, align 4
@SMBIOD_EV_SYNC = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"maxmux == 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"90mux\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_iod_addrq(%struct.smb_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_rq*, align 8
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.smbiod*, align 8
  %6 = alloca i32, align 4
  store %struct.smb_rq* %0, %struct.smb_rq** %3, align 8
  %7 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %8 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %7, i32 0, i32 4
  %9 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  store %struct.smb_vc* %9, %struct.smb_vc** %4, align 8
  %10 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %11 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %10, i32 0, i32 1
  %12 = load %struct.smbiod*, %struct.smbiod** %11, align 8
  store %struct.smbiod* %12, %struct.smbiod** %5, align 8
  %13 = call i32 @SMBIODEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %15 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %80

20:                                               ; preds = %1
  %21 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %22 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %29 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %20
  %33 = load i32, i32* @SMBR_INTERNAL, align 4
  %34 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %35 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %39 = call i32 @SMB_IOD_RQLOCK(%struct.smbiod* %38)
  %40 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %41 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %40, i32 0, i32 3
  %42 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %43 = load i32, i32* @sr_link, align 4
  %44 = call i32 @TAILQ_INSERT_HEAD(i32* %41, %struct.smb_rq* %42, i32 %43)
  %45 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %46 = call i32 @SMB_IOD_RQUNLOCK(%struct.smbiod* %45)
  br label %47

47:                                               ; preds = %62, %32
  %48 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %49 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %50 = call i64 @smb_iod_sendrq(%struct.smbiod* %48, %struct.smb_rq* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %54 = call i32 @smb_iod_dead(%struct.smbiod* %53)
  br label %68

55:                                               ; preds = %47
  %56 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %57 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SMBRQ_NOTSENT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %68

62:                                               ; preds = %55
  %63 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %64 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %63, i32 0, i32 5
  %65 = load i32, i32* @PWAIT, align 4
  %66 = load i32, i32* @hz, align 4
  %67 = call i32 @tsleep(i32* %64, i32 %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %47

68:                                               ; preds = %61, %52
  %69 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %70 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %75 = call i32 @smb_iod_removerq(%struct.smb_rq* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %78 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %2, align 4
  br label %145

80:                                               ; preds = %20, %1
  %81 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %82 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %100 [
    i32 128, label %84
    i32 129, label %86
  ]

84:                                               ; preds = %80
  %85 = load i32, i32* @ENOTCONN, align 4
  store i32 %85, i32* %2, align 4
  br label %145

86:                                               ; preds = %80
  %87 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %88 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %87, i32 0, i32 1
  %89 = load %struct.smbiod*, %struct.smbiod** %88, align 8
  %90 = load i32, i32* @SMBIOD_EV_CONNECT, align 4
  %91 = load i32, i32* @SMBIOD_EV_SYNC, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @smb_iod_request(%struct.smbiod* %89, i32 %92, i32* null)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %145

98:                                               ; preds = %86
  %99 = load i32, i32* @EXDEV, align 4
  store i32 %99, i32* %2, align 4
  br label %145

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %103 = call i32 @SMB_IOD_RQLOCK(%struct.smbiod* %102)
  br label %104

104:                                              ; preds = %120, %101
  %105 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %106 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 @SMBERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %131

111:                                              ; preds = %104
  %112 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %113 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %116 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %131

120:                                              ; preds = %111
  %121 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %122 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %126 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %125, i32 0, i32 4
  %127 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %128 = call i32 @SMB_IOD_RQLOCKPTR(%struct.smbiod* %127)
  %129 = load i32, i32* @PWAIT, align 4
  %130 = call i32 @msleep(i32* %126, i32 %128, i32 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %104

131:                                              ; preds = %119, %109
  %132 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %133 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %137 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %136, i32 0, i32 3
  %138 = load %struct.smb_rq*, %struct.smb_rq** %3, align 8
  %139 = load i32, i32* @sr_link, align 4
  %140 = call i32 @TAILQ_INSERT_TAIL(i32* %137, %struct.smb_rq* %138, i32 %139)
  %141 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %142 = call i32 @SMB_IOD_RQUNLOCK(%struct.smbiod* %141)
  %143 = load %struct.smbiod*, %struct.smbiod** %5, align 8
  %144 = call i32 @smb_iod_wakeup(%struct.smbiod* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %131, %98, %96, %84, %76
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @SMBIODEBUG(i8*) #1

declare dso_local i32 @SMB_IOD_RQLOCK(%struct.smbiod*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.smb_rq*, i32) #1

declare dso_local i32 @SMB_IOD_RQUNLOCK(%struct.smbiod*) #1

declare dso_local i64 @smb_iod_sendrq(%struct.smbiod*, %struct.smb_rq*) #1

declare dso_local i32 @smb_iod_dead(%struct.smbiod*) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @smb_iod_removerq(%struct.smb_rq*) #1

declare dso_local i32 @smb_iod_request(%struct.smbiod*, i32, i32*) #1

declare dso_local i32 @SMBERROR(i8*) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @SMB_IOD_RQLOCKPTR(%struct.smbiod*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.smb_rq*, i32) #1

declare dso_local i32 @smb_iod_wakeup(%struct.smbiod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
