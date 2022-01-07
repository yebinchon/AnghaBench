; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcbshowt5.c_t5_display_tcb_aux_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_tcbshowt5.c_t5_display_tcb_aux_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [63 x i8] c"  aux3_slush: 0x%x, unused: buf0 0x%x, buf1: 0x%x, main: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"aux3_slush\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ddp_buf0_unused\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ddp_buf1_unused\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ddp_main_unused\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"  DDP: DDPOFF  ActBuf  IndOut  WaitFrag  Rx2Tx  BufInf\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"         %u       %u       %u        %u        %u      %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ddp_off\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ddp_active_buf\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ddp_indicate_out\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ddp_wait_frag\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"ddp_rx2tx\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ddp_buf_inf\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"        Ind  PshfEn PushDis Flush NoInvalidate\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"   Buf0: %u      %u       %u    %u       %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"ddp_buf0_indicate\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"ddp_pshf_enable_0\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"ddp_push_disable_0\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"ddp_buf0_flush\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"ddp_psh_no_invalidate0\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"   Buf1: %u      %u       %u    %u       %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"ddp_buf1_indicate\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"ddp_pshf_enable_1\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"ddp_push_disable_1\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"ddp_buf1_flush\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"ddp_psh_no_invalidate1\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"        Valid  Offset   Length    Tag\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"   Buf0:  %u    0x%6.6x 0x%6.6x  0x%8.8x\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"ddp_buf0_valid\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"rx_ddp_buf0_offset\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"rx_ddp_buf0_len\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"rx_ddp_buf0_tag\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"   (Active)\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c" (Inactive)\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"   Buf1:  %u    0x%6.6x 0x%6.6x  0x%8.8x\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"ddp_buf1_valid\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"rx_ddp_buf1_offset\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"rx_ddp_buf1_len\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"rx_ddp_buf1_tag\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"   DDP is off (which also disables indicate)\0A\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"   Data being DDP'ed to buf 0, \00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"which has %u - %u = %u bytes of space left\0A\00", align 1
@.str.42 = private unnamed_addr constant [72 x i8] c"   And buf1, which is also valid, has %u - %u = %u bytes of space left\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"   Data being DDP'ed to buf 1, \00", align 1
@.str.44 = private unnamed_addr constant [72 x i8] c"   And buf0, which is also valid, has %u - %u = %u bytes of space left\0A\00", align 1
@.str.45 = private unnamed_addr constant [51 x i8] c"   !!! Invalid DDP buf 1 valid, but buf 0 active.\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"   !!! Invalid DDP buf 0 valid, but buf 1 active.\0A\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"   DDP is enabled, but no buffers are active && valid.\0A\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"   0 length Indicate buffers \00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"rx_hdr_offset\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"will cause new data to be held in PMRX.\0A\00", align 1
@.str.51 = private unnamed_addr constant [40 x i8] c"is causing %u bytes to be held in PMRX\0A\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"   Data being indicated to host\0A\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"   Indicate is off, which \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t5_display_tcb_aux_3(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @val(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 @val(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %16 = call i32 @val(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  %19 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %20 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %21 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %22 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %23 = call i32 @val(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %26 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %27 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %28 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %29 = call i32 @val(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0))
  %32 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %33 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %34 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %35 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %38 = icmp eq i32 0, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %2
  %40 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %41 = icmp eq i32 1, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %44 = icmp eq i32 0, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0))
  br label %49

47:                                               ; preds = %42, %39, %2
  %48 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %45
  %50 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0))
  %51 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %52 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  %53 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %56 = icmp eq i32 0, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %49
  %58 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0))
  %59 = icmp eq i32 1, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %62 = icmp eq i32 1, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0))
  br label %67

65:                                               ; preds = %60, %57, %49
  %66 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %63
  %68 = call i32 @val(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %69 = icmp eq i32 1, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.39, i64 0, i64 0))
  br label %184

72:                                               ; preds = %67
  %73 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %74 = icmp eq i32 1, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp eq i32 0, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0))
  %80 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %81 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %82 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %83 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %84 = sub nsw i32 %82, %83
  %85 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i64 0, i64 0), i32 %80, i32 %81, i32 %84)
  %86 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0))
  %87 = icmp eq i32 1, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  %90 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %91 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  %92 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %93 = sub nsw i32 %91, %92
  %94 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.42, i64 0, i64 0), i32 %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %88, %78
  br label %183

96:                                               ; preds = %75, %72
  %97 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0))
  %98 = icmp eq i32 1, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp eq i32 1, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %99
  %103 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i64 0, i64 0))
  %104 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  %105 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %106 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0))
  %107 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %108 = sub nsw i32 %106, %107
  %109 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i64 0, i64 0), i32 %104, i32 %105, i32 %108)
  %110 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %111 = icmp eq i32 1, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %114 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %115 = call i32 @val(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  %116 = call i32 @val(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %117 = sub nsw i32 %115, %116
  %118 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.44, i64 0, i64 0), i32 %113, i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %112, %102
  br label %182

120:                                              ; preds = %99, %96
  %121 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %122 = icmp eq i32 0, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0))
  %125 = icmp eq i32 1, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %128 = icmp eq i32 0, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.45, i64 0, i64 0))
  br label %181

131:                                              ; preds = %126, %123, %120
  %132 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %133 = icmp eq i32 1, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0))
  %136 = icmp eq i32 0, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = call i32 @val(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %139 = icmp eq i32 1, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0))
  br label %180

142:                                              ; preds = %137, %134, %131
  %143 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i64 0, i64 0))
  %144 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %145 = icmp eq i32 0, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %142
  %147 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %148 = icmp eq i32 0, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = call i32 @val(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %151 = icmp eq i32 0, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.48, i64 0, i64 0))
  %154 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0))
  %155 = icmp eq i32 0, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.50, i64 0, i64 0))
  br label %161

158:                                              ; preds = %152
  %159 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0))
  %160 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %158, %156
  br label %164

162:                                              ; preds = %149, %146
  %163 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %161
  br label %179

165:                                              ; preds = %142
  %166 = call i32 @val(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %167 = icmp eq i32 1, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i64 0, i64 0))
  %170 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0))
  %171 = icmp eq i32 0, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.50, i64 0, i64 0))
  br label %177

174:                                              ; preds = %168
  %175 = call i32 @val(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0))
  %176 = call i32 (i8*, ...) @PR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.51, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %174, %172
  br label %178

178:                                              ; preds = %177, %165
  br label %179

179:                                              ; preds = %178, %164
  br label %180

180:                                              ; preds = %179, %140
  br label %181

181:                                              ; preds = %180, %129
  br label %182

182:                                              ; preds = %181, %119
  br label %183

183:                                              ; preds = %182, %95
  br label %184

184:                                              ; preds = %183, %70
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
