; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_policy.c_hci_switch_role.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_policy.c_hci_switch_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.hostent = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NG_HCI_ROLE_SLAVE = common dso_local global i32 0, align 4
@NG_HCI_ROLE_MASTER = common dso_local global i32 0, align 4
@NG_HCI_OGF_LINK_POLICY = common dso_local global i32 0, align 4
@NG_HCI_OCF_SWITCH_ROLE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NG_HCI_EVENT_ROLE_CHANGE = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"BD_ADDR: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Role: %s [%#x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Master\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Slave\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_switch_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_switch_role(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.hostent*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %15 = bitcast i8* %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %11, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %56 [
    i32 2, label %17
  ]

17:                                               ; preds = %3
  %18 = load i8**, i8*** %7, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %22 = call i32 @bt_aton(i8* %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  store %struct.hostent* null, %struct.hostent** %12, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct.hostent* @bt_gethostbyname(i8* %27)
  store %struct.hostent* %28, %struct.hostent** %12, align 8
  %29 = icmp eq %struct.hostent* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @USAGE, align 4
  store i32 %31, i32* %4, align 4
  br label %142

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %34 = load %struct.hostent*, %struct.hostent** %12, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32* %33, i32 %36, i32 4)
  br label %38

38:                                               ; preds = %32, %17
  %39 = load i8**, i8*** %7, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @sscanf(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @USAGE, align 4
  store i32 %45, i32* %4, align 4
  br label %142

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @NG_HCI_ROLE_SLAVE, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @NG_HCI_ROLE_MASTER, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  br label %58

56:                                               ; preds = %3
  %57 = load i32, i32* @USAGE, align 4
  store i32 %57, i32* %4, align 4
  br label %142

58:                                               ; preds = %53
  store i32 512, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @NG_HCI_OGF_LINK_POLICY, align 4
  %61 = load i32, i32* @NG_HCI_OCF_SWITCH_ROLE, align 4
  %62 = call i32 @NG_HCI_OPCODE(i32 %60, i32 %61)
  %63 = bitcast %struct.TYPE_4__* %10 to i8*
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %65 = call i64 @hci_request(i32 %59, i32 %62, i8* %63, i32 8, i8* %64, i32* %8)
  %66 = load i64, i64* @ERROR, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i64, i64* @ERROR, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %142

71:                                               ; preds = %58
  %72 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %73 = load i8, i8* %72, align 16
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @FAILED, align 4
  store i32 %77, i32* %4, align 4
  br label %142

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %139, %78
  store i32 512, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %82 = call i64 @hci_recv(i32 %80, i8* %81, i32* %8)
  %83 = load i64, i64* @ERROR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i64, i64* @ERROR, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %142

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %90, 8
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* @EIO, align 4
  store i32 %93, i32* @errno, align 4
  %94 = load i64, i64* @ERROR, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %142

96:                                               ; preds = %88
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NG_HCI_EVENT_ROLE_CHANGE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %139

102:                                              ; preds = %96
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 1
  %105 = bitcast %struct.TYPE_6__* %104 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %13, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load i32, i32* @stdout, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @hci_status2str(i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %115, i32 %118)
  %120 = load i32, i32* @FAILED, align 4
  store i32 %120, i32* %4, align 4
  br label %142

121:                                              ; preds = %102
  %122 = load i32, i32* @stdout, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = call i8* @hci_bdaddr2str(i32* %124)
  %126 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* @stdout, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @NG_HCI_ROLE_MASTER, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %134, i32 %137)
  br label %140

139:                                              ; preds = %96
  br label %79

140:                                              ; preds = %121
  %141 = load i32, i32* @OK, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %110, %92, %85, %76, %68, %56, %44, %30
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @bt_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @bt_gethostbyname(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @hci_request(i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #1

declare dso_local i64 @hci_recv(i32, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @hci_status2str(i32) #1

declare dso_local i8* @hci_bdaddr2str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
