; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2cap.c_l2cap_read_channel_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2cap.c_l2cap_read_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_btsocket_l2cap_raw_chan_list = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@l2cap_read_channel_list.state = internal constant [7 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"CLOSED\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"W4_L2CAP_CON_RSP\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"W4_L2CA_CON_RSP\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OPEN\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"W4_L2CAP_DISCON_RSP\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"W4_L2CA_DISCON_RSP\00", align 1
@OK = common dso_local global i32 0, align 4
@NG_L2CAP_MAX_CHAN_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@SIOC_L2CAP_NODE_GET_CHAN_LIST = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"L2CAP channels:\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Remote BD_ADDR     SCID/ DCID   PSM  IMTU/ OMTU State\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%-17.17s %5d/%5d %5d %5d/%5d %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @l2cap_read_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_read_channel_list(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ng_btsocket_l2cap_raw_chan_list, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* @OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 @memset(%struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 16)
  %13 = load i32, i32* @NG_L2CAP_MAX_CHAN_NUM, align 4
  %14 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @NG_L2CAP_MAX_CHAN_NUM, align 4
  %16 = call %struct.TYPE_3__* @calloc(i32 %15, i32 4)
  %17 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %17, align 8
  %18 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* @errno, align 4
  %23 = load i32, i32* @ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %118

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SIOC_L2CAP_NODE_GET_CHAN_LIST, align 4
  %27 = call i64 @ioctl(i32 %25, i32 %26, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 16)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ERROR, align 4
  store i32 %30, i32* %10, align 4
  br label %113

31:                                               ; preds = %24
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %109, %31
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %112

41:                                               ; preds = %36
  %42 = load i32, i32* @stdout, align 4
  %43 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  %49 = call i8* @bdaddrpr(i32* %48)
  %50 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8**, ...) bitcast (i32 (...)* @SIZE to i32 (i8**, ...)*)(i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @l2cap_read_channel_list.state, i64 0, i64 0))
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %41
  br label %106

95:                                               ; preds = %41
  %96 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [7 x i8*], [7 x i8*]* @l2cap_read_channel_list.state, i64 0, i64 %103
  %105 = load i8*, i8** %104, align 8
  br label %106

106:                                              ; preds = %95, %94
  %107 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %94 ], [ %105, %95 ]
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %49, i32 %56, i32 %63, i32 %70, i32 %77, i32 %84, i8* %107)
  br label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %36

112:                                              ; preds = %36
  br label %113

113:                                              ; preds = %112, %29
  %114 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %8, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = call i32 @free(%struct.TYPE_3__* %115)
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %21
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @memset(%struct.ng_btsocket_l2cap_raw_chan_list*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @calloc(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_l2cap_raw_chan_list*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @bdaddrpr(i32*) #1

declare dso_local i32 @SIZE(...) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
