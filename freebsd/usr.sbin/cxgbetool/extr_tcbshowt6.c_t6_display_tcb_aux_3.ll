; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcbshowt6.c_t6_display_tcb_aux_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcbshowt6.c_t6_display_tcb_aux_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"  aux3_slush: 0x%x, unused: buf0 0x%x, buf1: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"aux3_slush\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ddp_buf0_unused\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ddp_buf1_unused\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"  ind_full: %u, tls_key_mode: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ddp_indicate_fll\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"tls_key_mode\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"  DDP: DDPOFF  ActBuf  IndOut  WaitFrag  Rx2Tx  BufInf\0A\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"         %u       %u       %u        %u        %u      %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ddp_off\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"ddp_active_buf\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"ddp_indicate_out\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"ddp_wait_frag\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ddp_rx2tx\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"ddp_buf_inf\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"        Ind  PshfEn PushDis Flush NoInvalidate\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"   Buf0: %u      %u       %u    %u       %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"ddp_buf0_indicate\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"ddp_pshf_enable_0\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"ddp_push_disable_0\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"ddp_buf0_flush\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"ddp_psh_no_invalidate0\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"   Buf1: %u      %u       %u    %u       %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"ddp_buf1_indicate\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"ddp_pshf_enable_1\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"ddp_push_disable_1\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"ddp_buf1_flush\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"ddp_psh_no_invalidate1\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"        Valid  Offset   Length    Tag\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"   Buf0:  %u    0x%6.6x 0x%6.6x  0x%8.8x\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"ddp_buf0_valid\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"rx_ddp_buf0_offset\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"rx_ddp_buf0_len\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"rx_ddp_buf0_tag\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"   (Active)\0A\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c" (Inactive)\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"   Buf1:  %u    0x%6.6x 0x%6.6x  0x%8.8x\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"ddp_buf1_valid\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"rx_ddp_buf1_offset\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"rx_ddp_buf1_len\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"rx_ddp_buf1_tag\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"   DDP is off (which also disables indicate)\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"   Data being DDP'ed to buf 0, \00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"which has %u - %u = %u bytes of space left\0A\00", align 1
@.str.44 = private unnamed_addr constant [72 x i8] c"   And buf1, which is also valid, has %u - %u = %u bytes of space left\0A\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"   Data being DDP'ed to buf 1, \00", align 1
@.str.46 = private unnamed_addr constant [72 x i8] c"   And buf0, which is also valid, has %u - %u = %u bytes of space left\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"   !!! Invalid DDP buf 1 valid, but buf 0 active.\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"   !!! Invalid DDP buf 0 valid, but buf 1 active.\0A\00", align 1
@.str.49 = private unnamed_addr constant [56 x i8] c"   DDP is enabled, but no buffers are active && valid.\0A\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"   0 length Indicate buffers \00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"rx_hdr_offset\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"will cause new data to be held in PMRX.\0A\00", align 1
@.str.53 = private unnamed_addr constant [40 x i8] c"is causing %u bytes to be held in PMRX\0A\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"   Data being indicated to host\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"   Indicate is off, which \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t6_display_tcb_aux_3(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32 %7)
  %9 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 @val(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %9, i32 %10)
  %12 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %16 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %17 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %18 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.8, i64 0, i64 0), i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  %21 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %22 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %23 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %24 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %25 = call i32 @val(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %28 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %29 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %30 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %31 = call i32 @val(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i64 0, i64 0))
  %34 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %35 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %36 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  %37 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.29, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %40 = icmp eq i32 0, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %2
  %42 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %43 = icmp eq i32 1, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %46 = icmp eq i32 0, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0))
  br label %51

49:                                               ; preds = %44, %41, %2
  %50 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %47
  %52 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %53 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0))
  %54 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %55 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.36, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %58 = icmp eq i32 0, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %61 = icmp eq i32 1, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %64 = icmp eq i32 1, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0))
  br label %69

67:                                               ; preds = %62, %59, %51
  %68 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %65
  %70 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %71 = icmp eq i32 1, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.41, i64 0, i64 0))
  br label %186

74:                                               ; preds = %69
  %75 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %76 = icmp eq i32 1, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %79 = icmp eq i32 0, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.42, i64 0, i64 0))
  %82 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  %83 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %84 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  %85 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %86 = sub nsw i32 %84, %85
  %87 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.43, i64 0, i64 0), i32 %82, i32 %83, i32 %86)
  %88 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %89 = icmp eq i32 1, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %92 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0))
  %93 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %94 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0))
  %95 = sub nsw i32 %93, %94
  %96 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.44, i64 0, i64 0), i32 %91, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %90, %80
  br label %185

98:                                               ; preds = %77, %74
  %99 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %100 = icmp eq i32 1, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %103 = icmp eq i32 1, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i64 0, i64 0))
  %106 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %107 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0))
  %108 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %109 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0))
  %110 = sub nsw i32 %108, %109
  %111 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.43, i64 0, i64 0), i32 %106, i32 %107, i32 %110)
  %112 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %113 = icmp eq i32 1, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %104
  %115 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  %116 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %117 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  %118 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %119 = sub nsw i32 %117, %118
  %120 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.46, i64 0, i64 0), i32 %115, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %114, %104
  br label %184

122:                                              ; preds = %101, %98
  %123 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %124 = icmp eq i32 0, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %127 = icmp eq i32 1, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %130 = icmp eq i32 0, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0))
  br label %183

133:                                              ; preds = %128, %125, %122
  %134 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %135 = icmp eq i32 1, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %138 = icmp eq i32 0, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %141 = icmp eq i32 1, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0))
  br label %182

144:                                              ; preds = %139, %136, %133
  %145 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0))
  %146 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %147 = icmp eq i32 0, %146
  br i1 %147, label %148, label %167

148:                                              ; preds = %144
  %149 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %150 = icmp eq i32 0, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %148
  %152 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %153 = icmp eq i32 0, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.50, i64 0, i64 0))
  %156 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0))
  %157 = icmp eq i32 0, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i64 0, i64 0))
  br label %163

160:                                              ; preds = %154
  %161 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0))
  %162 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %160, %158
  br label %166

164:                                              ; preds = %151, %148
  %165 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %163
  br label %181

167:                                              ; preds = %144
  %168 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %169 = icmp eq i32 1, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0))
  %172 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0))
  %173 = icmp eq i32 0, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i64 0, i64 0))
  br label %179

176:                                              ; preds = %170
  %177 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0))
  %178 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.53, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %176, %174
  br label %180

180:                                              ; preds = %179, %167
  br label %181

181:                                              ; preds = %180, %166
  br label %182

182:                                              ; preds = %181, %142
  br label %183

183:                                              ; preds = %182, %131
  br label %184

184:                                              ; preds = %183, %121
  br label %185

185:                                              ; preds = %184, %97
  br label %186

186:                                              ; preds = %185, %72
  ret void
}

declare dso_local i32 @PR(i8*, ...) #1

declare dso_local i32 @val(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
