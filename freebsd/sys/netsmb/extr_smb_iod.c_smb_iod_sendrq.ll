; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_sendrq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_sendrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbiod = type { i32, i64, i32, %struct.smb_vc*, %struct.thread* }
%struct.smb_vc = type { i64, i32, i32 }
%struct.thread = type { i32 }
%struct.smb_rq = type { i64, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.smb_share* }
%struct.TYPE_2__ = type { i32 }
%struct.smb_share = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"iod_state = %d\0A\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@SMB_TID_UNKNOWN = common dso_local global i32 0, align 4
@SMB_FLAGS2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@SMBR_RESTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"M:%04x, P:%04x, U:%04x, T:%04x\0A\00", align 1
@M_COPYALL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SMBR_SENT = common dso_local global i32 0, align 4
@SMBRQ_SENT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbiod*, %struct.smb_rq*)* @smb_iod_sendrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_iod_sendrq(%struct.smbiod* %0, %struct.smb_rq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smbiod*, align 8
  %5 = alloca %struct.smb_rq*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.smb_vc*, align 8
  %8 = alloca %struct.smb_share*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  store %struct.smbiod* %0, %struct.smbiod** %4, align 8
  store %struct.smb_rq* %1, %struct.smb_rq** %5, align 8
  %11 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %12 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %11, i32 0, i32 4
  %13 = load %struct.thread*, %struct.thread** %12, align 8
  store %struct.thread* %13, %struct.thread** %6, align 8
  %14 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %15 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %14, i32 0, i32 3
  %16 = load %struct.smb_vc*, %struct.smb_vc** %15, align 8
  store %struct.smb_vc* %16, %struct.smb_vc** %7, align 8
  %17 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %18 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %17, i32 0, i32 9
  %19 = load %struct.smb_share*, %struct.smb_share** %18, align 8
  store %struct.smb_share* %19, %struct.smb_share** %8, align 8
  %20 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %21 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @SMBIODEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %25 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 130, label %31
    i32 128, label %34
  ]

27:                                               ; preds = %2
  %28 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %29 = load i32, i32* @ENOTCONN, align 4
  %30 = call i32 @smb_iod_rqprocessed(%struct.smb_rq* %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %158

31:                                               ; preds = %2
  %32 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %33 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %32, i32 0, i32 0
  store i32 128, i32* %33, align 8
  store i32 0, i32* %3, align 4
  br label %158

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %158

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %38 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %36
  %42 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %43 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %46 = icmp ne %struct.smb_share* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %49 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @SMB_TID_UNKNOWN, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %50, %47 ], [ %52, %51 ]
  %55 = call i32 @le16enc(i32 %44, i32 %54)
  %56 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %57 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.smb_vc*, %struct.smb_vc** %7, align 8
  %60 = icmp ne %struct.smb_vc* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.smb_vc*, %struct.smb_vc** %7, align 8
  %63 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  br label %66

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ 0, %65 ]
  %68 = call i32 @le16enc(i32 %58, i32 %67)
  %69 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %70 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %69, i32 0, i32 5
  %71 = call i32 @mb_fixhdr(%struct.TYPE_2__* %70)
  %72 = load %struct.smb_vc*, %struct.smb_vc** %7, align 8
  %73 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SMB_FLAGS2_SECURITY_SIGNATURE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %80 = call i32 @smb_rq_sign(%struct.smb_rq* %79)
  br label %81

81:                                               ; preds = %78, %66
  br label %82

82:                                               ; preds = %81, %36
  %83 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %84 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = icmp sgt i64 %85, 5
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load i32, i32* @SMBR_RESTART, align 4
  %90 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %91 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %95 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %96 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @smb_iod_rqprocessed(%struct.smb_rq* %94, i32 %97)
  %99 = load i32, i32* @ENOTCONN, align 4
  store i32 %99, i32* %3, align 4
  br label %158

100:                                              ; preds = %82
  %101 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %102 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SMBSDEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 0, i32 0, i32 0)
  %105 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %106 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @m_dumpm(i32 %108)
  %110 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %111 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @M_COPYALL, align 4
  %115 = load i32, i32* @M_WAITOK, align 4
  %116 = call %struct.mbuf* @m_copym(i32 %113, i32 0, i32 %114, i32 %115)
  store %struct.mbuf* %116, %struct.mbuf** %9, align 8
  %117 = load %struct.smb_vc*, %struct.smb_vc** %7, align 8
  %118 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %119 = load %struct.thread*, %struct.thread** %6, align 8
  %120 = call i32 @SMB_TRAN_SEND(%struct.smb_vc* %117, %struct.mbuf* %118, %struct.thread* %119)
  %121 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %122 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  store i32 %120, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %100
  %126 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %127 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %126, i32 0, i32 4
  %128 = call i32 @getnanotime(i32* %127)
  %129 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %130 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.smbiod*, %struct.smbiod** %4, align 8
  %133 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @SMBR_SENT, align 4
  %135 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %136 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* @SMBRQ_SENT, align 4
  %140 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %141 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  store i32 0, i32* %3, align 4
  br label %158

142:                                              ; preds = %100
  %143 = load %struct.smb_vc*, %struct.smb_vc** %7, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i64 @SMB_TRAN_FATAL(%struct.smb_vc* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @ENOTCONN, align 4
  store i32 %148, i32* %3, align 4
  br label %158

149:                                              ; preds = %142
  %150 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %151 = call i64 @smb_rq_intr(%struct.smb_rq* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %155 = load i32, i32* @EINTR, align 4
  %156 = call i32 @smb_iod_rqprocessed(%struct.smb_rq* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %149
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %147, %125, %88, %34, %31, %27
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @SMBIODEBUG(i8*, i32) #1

declare dso_local i32 @smb_iod_rqprocessed(%struct.smb_rq*, i32) #1

declare dso_local i32 @le16enc(i32, i32) #1

declare dso_local i32 @mb_fixhdr(%struct.TYPE_2__*) #1

declare dso_local i32 @smb_rq_sign(%struct.smb_rq*) #1

declare dso_local i32 @SMBSDEBUG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @m_dumpm(i32) #1

declare dso_local %struct.mbuf* @m_copym(i32, i32, i32, i32) #1

declare dso_local i32 @SMB_TRAN_SEND(%struct.smb_vc*, %struct.mbuf*, %struct.thread*) #1

declare dso_local i32 @getnanotime(i32*) #1

declare dso_local i64 @SMB_TRAN_FATAL(%struct.smb_vc*, i32) #1

declare dso_local i64 @smb_rq_intr(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
