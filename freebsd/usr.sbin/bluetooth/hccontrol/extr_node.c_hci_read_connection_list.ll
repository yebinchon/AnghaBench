; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_read_connection_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_node.c_hci_read_connection_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_btsocket_hci_raw_con_list = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32, i64, i32, i32, i32, i32, i32 }

@OK = common dso_local global i32 0, align 4
@NG_HCI_MAX_CON_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@SIOC_HCI_RAW_NODE_GET_CON_LIST = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Remote BD_ADDR    Handle Type Mode Role Encrypt Pending Queue State\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%-17.17s %6d %4.4s %4d %4.4s %7.7s %7d %5d %s\0A\00", align 1
@NG_HCI_LINK_ACL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ACL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SCO\00", align 1
@NG_HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"MAST\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SLAV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_read_connection_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_read_connection_list(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ng_btsocket_hci_raw_con_list, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* @OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 @memset(%struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 16)
  %13 = load i32, i32* @NG_HCI_MAX_CON_NUM, align 4
  %14 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @NG_HCI_MAX_CON_NUM, align 4
  %16 = call %struct.TYPE_3__* @calloc(i32 %15, i32 4)
  %17 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %17, align 8
  %18 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* @errno, align 4
  %23 = load i32, i32* @ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %124

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SIOC_HCI_RAW_NODE_GET_CON_LIST, align 4
  %27 = call i64 @ioctl(i32 %25, i32 %26, %struct.ng_btsocket_hci_raw_con_list* %8, i32 16)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ERROR, align 4
  store i32 %30, i32* %10, align 4
  br label %119

31:                                               ; preds = %24
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %115, %31
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %118

39:                                               ; preds = %34
  %40 = load i32, i32* @stdout, align 4
  %41 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 8
  %47 = call i8* @hci_bdaddr2str(i32* %46)
  %48 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NG_HCI_LINK_ACL, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %66 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NG_HCI_ROLE_MASTER, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %84 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @hci_encrypt2str(i32 %90, i32 1)
  %92 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @hci_con_state2str(i32 %112)
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %54, i8* %65, i32 %72, i8* %83, i8* %91, i32 %98, i32 %105, i8* %113)
  br label %115

115:                                              ; preds = %39
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %34

118:                                              ; preds = %34
  br label %119

119:                                              ; preds = %118, %29
  %120 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %8, i32 0, i32 1
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = call i32 @free(%struct.TYPE_3__* %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %119, %21
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @memset(%struct.ng_btsocket_hci_raw_con_list*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @calloc(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_hci_raw_con_list*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @hci_bdaddr2str(i32*) #1

declare dso_local i8* @hci_encrypt2str(i32, i32) #1

declare dso_local i8* @hci_con_state2str(i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
