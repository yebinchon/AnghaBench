; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_reason_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_reason_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"unspecified\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"previous authentication is expired\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"sending STA is leaving/has left IBSS or ESS\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"disassociated due to inactivity\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"too many associated STAs\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"class 2 frame received from nonauthenticated STA\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"class 3 frame received from nonassociated STA\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"sending STA is leaving/has left BSS\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"STA requesting (re)association is not authenticated\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"information in the Power Capability element is unacceptable\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"information in the Supported Channels element is unacceptable\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"invalid element\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"MIC failure\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"4-Way handshake timeout\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"group key update timeout\00", align 1
@.str.15 = private unnamed_addr constant [94 x i8] c"element in 4-Way handshake different from (re)association request/probe response/beacon frame\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"invalid group cipher\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"invalid pairwise cipher\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"invalid AKMP\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"unsupported version in RSN IE\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"invalid capabilities in RSN IE\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"IEEE 802.1X authentication failed\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"cipher suite rejected because of the security policy\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"unspecified (QoS-related)\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"QoS AP lacks sufficient bandwidth for this QoS STA\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"too many frames need to be acknowledged\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"STA is transmitting outside the limits of its TXOPs\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"requested from peer STA (the STA is resetting/leaving the BSS)\00", align 1
@.str.28 = private unnamed_addr constant [64 x i8] c"requested from peer STA (it does not want to use the mechanism)\00", align 1
@.str.29 = private unnamed_addr constant [67 x i8] c"requested from peer STA (setup is required for the used mechanism)\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"requested from peer STA (timeout)\00", align 1
@.str.31 = private unnamed_addr constant [92 x i8] c"SME cancels the mesh peering instance (not related to the maximum number of peer mesh STAs)\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"maximum number of peer mesh STAs was reached\00", align 1
@.str.33 = private unnamed_addr constant [99 x i8] c"the received information violates the Mesh Configuration policy configured in the mesh STA profile\00", align 1
@.str.34 = private unnamed_addr constant [92 x i8] c"the mesh STA has received a Mesh Peering Close message requesting to close the mesh peering\00", align 1
@.str.35 = private unnamed_addr constant [121 x i8] c"the mesh STA has resent dot11MeshMaxRetries Mesh Peering Open messages, without receiving a Mesh Peering Confirm message\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"the confirmTimer for the mesh peering instance times out\00", align 1
@.str.37 = private unnamed_addr constant [88 x i8] c"the mesh STA fails to unwrap the GTK or the values in the wrapped contents do not match\00", align 1
@.str.38 = private unnamed_addr constant [112 x i8] c"the mesh STA receives inconsistent information about the mesh parameters between Mesh Peering Management frames\00", align 1
@.str.39 = private unnamed_addr constant [122 x i8] c"the mesh STA fails the authenticated mesh peering exchange because due to failure in selecting pairwise/group ciphersuite\00", align 1
@.str.40 = private unnamed_addr constant [75 x i8] c"the mesh STA does not have proxy information for this external destination\00", align 1
@.str.41 = private unnamed_addr constant [71 x i8] c"the mesh STA does not have forwarding information for this destination\00", align 1
@.str.42 = private unnamed_addr constant [122 x i8] c"the mesh STA determines that the link to the next hop of an active path in its forwarding information is no longer usable\00", align 1
@.str.43 = private unnamed_addr constant [58 x i8] c"the MAC address of the STA already exists in the mesh BSS\00", align 1
@.str.44 = private unnamed_addr constant [69 x i8] c"the mesh STA performs channel switch to meet regulatory requirements\00", align 1
@.str.45 = private unnamed_addr constant [61 x i8] c"the mesh STA performs channel switch with unspecified reason\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"reserved/unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ieee80211_reason_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %51 [
    i32 130, label %5
    i32 166, label %6
    i32 165, label %7
    i32 170, label %8
    i32 167, label %9
    i32 137, label %10
    i32 138, label %11
    i32 169, label %12
    i32 168, label %13
    i32 162, label %14
    i32 161, label %15
    i32 158, label %16
    i32 139, label %17
    i32 173, label %18
    i32 159, label %19
    i32 157, label %20
    i32 160, label %21
    i32 135, label %22
    i32 171, label %23
    i32 128, label %24
    i32 155, label %25
    i32 172, label %26
    i32 163, label %27
    i32 129, label %28
    i32 156, label %29
    i32 131, label %30
    i32 136, label %31
    i32 154, label %32
    i32 164, label %33
    i32 133, label %34
    i32 132, label %35
    i32 134, label %36
    i32 144, label %37
    i32 149, label %38
    i32 151, label %39
    i32 143, label %40
    i32 150, label %41
    i32 147, label %42
    i32 148, label %43
    i32 146, label %44
    i32 140, label %45
    i32 141, label %46
    i32 142, label %47
    i32 145, label %48
    i32 153, label %49
    i32 152, label %50
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %52

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %52

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %52

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %52

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %52

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %52

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %52

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %52

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %52

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %52

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %52

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %52

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %52

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %52

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %52

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %52

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %52

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %52

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %52

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %52

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %52

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %52

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %52

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %52

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %52

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %52

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %52

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %52

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %52

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %52

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %52

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %52

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %52

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %52

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %52

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %52

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %52

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %52

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %52

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %52

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %52

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %52

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %52

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %52

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %52

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %52

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %52

52:                                               ; preds = %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
