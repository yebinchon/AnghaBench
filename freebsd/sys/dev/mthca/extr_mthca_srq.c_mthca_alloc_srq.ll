; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_srq.c_mthca_alloc_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_srq.c_mthca_alloc_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.mthca_pd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ib_srq_attr = type { i64, i32 }
%struct.mthca_srq = type { i64, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64 }
%struct.mthca_mailbox = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_DB_TYPE_SRQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SW2HW_SRQ failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"HW2SW_SRQ failed (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_alloc_srq(%struct.mthca_dev* %0, %struct.mthca_pd* %1, %struct.ib_srq_attr* %2, %struct.mthca_srq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_dev*, align 8
  %7 = alloca %struct.mthca_pd*, align 8
  %8 = alloca %struct.ib_srq_attr*, align 8
  %9 = alloca %struct.mthca_srq*, align 8
  %10 = alloca %struct.mthca_mailbox*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %6, align 8
  store %struct.mthca_pd* %1, %struct.mthca_pd** %7, align 8
  store %struct.ib_srq_attr* %2, %struct.ib_srq_attr** %8, align 8
  store %struct.mthca_srq* %3, %struct.mthca_srq** %9, align 8
  %13 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %14 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %17 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %15, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  %22 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %23 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %26 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %330

33:                                               ; preds = %21
  %34 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %35 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %38 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %40 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %43 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %45 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %44, i32 0, i32 12
  store i64 0, i64* %45, align 8
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %47 = call i64 @mthca_is_memfree(%struct.mthca_dev* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %33
  %50 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %51 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i64 @roundup_pow_of_two(i32 %54)
  %56 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %57 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %65

58:                                               ; preds = %33
  %59 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %60 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  %63 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %64 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %49
  %66 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %67 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = add i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = call i64 @roundup_pow_of_two(i32 %72)
  %74 = call i32 @max(i64 64, i64 %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %76 = call i64 @mthca_is_memfree(%struct.mthca_dev* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %81 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %79, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %330

88:                                               ; preds = %78, %65
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @ilog2(i32 %89)
  %91 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %92 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 8
  %93 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %94 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @mthca_alloc(i32* %95)
  %97 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %98 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %100 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %330

106:                                              ; preds = %88
  %107 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %108 = call i64 @mthca_is_memfree(%struct.mthca_dev* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %149

110:                                              ; preds = %106
  %111 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %112 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %113 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %117 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @mthca_table_get(%struct.mthca_dev* %111, i32 %115, i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  br label %321

123:                                              ; preds = %110
  %124 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %125 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %123
  %130 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %131 = load i32, i32* @MTHCA_DB_TYPE_SRQ, align 4
  %132 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %133 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %136 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %135, i32 0, i32 10
  %137 = call i64 @mthca_alloc_db(%struct.mthca_dev* %130, i32 %131, i32 %134, i32* %136)
  %138 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %139 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  %140 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %141 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %129
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %12, align 4
  br label %311

147:                                              ; preds = %129
  br label %148

148:                                              ; preds = %147, %123
  br label %149

149:                                              ; preds = %148, %106
  %150 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %150, i32 %151)
  store %struct.mthca_mailbox* %152, %struct.mthca_mailbox** %10, align 8
  %153 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %154 = call i64 @IS_ERR(%struct.mthca_mailbox* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %158 = call i32 @PTR_ERR(%struct.mthca_mailbox* %157)
  store i32 %158, i32* %12, align 4
  br label %293

159:                                              ; preds = %149
  %160 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %161 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %162 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %163 = call i32 @mthca_alloc_srq_buf(%struct.mthca_dev* %160, %struct.mthca_pd* %161, %struct.mthca_srq* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %289

167:                                              ; preds = %159
  %168 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %169 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %168, i32 0, i32 9
  %170 = call i32 @spin_lock_init(i32* %169)
  %171 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %172 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %171, i32 0, i32 4
  store i32 1, i32* %172, align 8
  %173 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %174 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %173, i32 0, i32 8
  %175 = call i32 @init_waitqueue_head(i32* %174)
  %176 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %177 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %176, i32 0, i32 7
  %178 = call i32 @mutex_init(i32* %177)
  %179 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %180 = call i64 @mthca_is_memfree(%struct.mthca_dev* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %167
  %183 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %184 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %185 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %186 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %187 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @mthca_arbel_init_srq_context(%struct.mthca_dev* %183, %struct.mthca_pd* %184, %struct.mthca_srq* %185, i32 %188)
  br label %198

190:                                              ; preds = %167
  %191 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %192 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %193 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %194 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %195 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @mthca_tavor_init_srq_context(%struct.mthca_dev* %191, %struct.mthca_pd* %192, %struct.mthca_srq* %193, i32 %196)
  br label %198

198:                                              ; preds = %190, %182
  %199 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %200 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %201 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %202 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @mthca_SW2HW_SRQ(%struct.mthca_dev* %199, %struct.mthca_mailbox* %200, i32 %203)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %198
  %208 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %209 = load i32, i32* %12, align 4
  %210 = call i32 @mthca_warn(%struct.mthca_dev* %208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %209)
  br label %278

211:                                              ; preds = %198
  %212 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %213 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = call i32 @spin_lock_irq(i32* %214)
  %216 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %217 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 3
  %219 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %220 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %223 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = sub nsw i32 %225, 1
  %227 = and i32 %221, %226
  %228 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %229 = call i64 @mthca_array_set(i32* %218, i32 %227, %struct.mthca_srq* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %211
  %232 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %233 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = call i32 @spin_unlock_irq(i32* %234)
  br label %264

236:                                              ; preds = %211
  %237 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %238 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 2
  %240 = call i32 @spin_unlock_irq(i32* %239)
  %241 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %242 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %243 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %241, %struct.mthca_mailbox* %242)
  %244 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %245 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %244, i32 0, i32 6
  store i64 0, i64* %245, align 8
  %246 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %247 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = sub nsw i64 %248, 1
  %250 = trunc i64 %249 to i32
  %251 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %252 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 4
  %253 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %254 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %255, 1
  %257 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %258 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %257, i32 0, i32 0
  store i64 %256, i64* %258, align 8
  %259 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %260 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %8, align 8
  %263 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 8
  store i32 0, i32* %5, align 4
  br label %330

264:                                              ; preds = %231
  %265 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %266 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %267 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %268 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @mthca_HW2SW_SRQ(%struct.mthca_dev* %265, %struct.mthca_mailbox* %266, i32 %269)
  store i32 %270, i32* %12, align 4
  %271 = load i32, i32* %12, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %264
  %274 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %275 = load i32, i32* %12, align 4
  %276 = call i32 @mthca_warn(%struct.mthca_dev* %274, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %273, %264
  br label %278

278:                                              ; preds = %277, %207
  %279 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %280 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %278
  %285 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %286 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %287 = call i32 @mthca_free_srq_buf(%struct.mthca_dev* %285, %struct.mthca_srq* %286)
  br label %288

288:                                              ; preds = %284, %278
  br label %289

289:                                              ; preds = %288, %166
  %290 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %291 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %10, align 8
  %292 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %290, %struct.mthca_mailbox* %291)
  br label %293

293:                                              ; preds = %289, %156
  %294 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %295 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %310, label %299

299:                                              ; preds = %293
  %300 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %301 = call i64 @mthca_is_memfree(%struct.mthca_dev* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %305 = load i32, i32* @MTHCA_DB_TYPE_SRQ, align 4
  %306 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %307 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @mthca_free_db(%struct.mthca_dev* %304, i32 %305, i64 %308)
  br label %310

310:                                              ; preds = %303, %299, %293
  br label %311

311:                                              ; preds = %310, %144
  %312 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %313 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %314 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %318 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @mthca_table_put(%struct.mthca_dev* %312, i32 %316, i32 %319)
  br label %321

321:                                              ; preds = %311, %122
  %322 = load %struct.mthca_dev*, %struct.mthca_dev** %6, align 8
  %323 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 0
  %325 = load %struct.mthca_srq*, %struct.mthca_srq** %9, align 8
  %326 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @mthca_free(i32* %324, i32 %327)
  %329 = load i32, i32* %12, align 4
  store i32 %329, i32* %5, align 4
  br label %330

330:                                              ; preds = %321, %236, %103, %85, %30
  %331 = load i32, i32* %5, align 4
  ret i32 %331
}

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mthca_alloc(i32*) #1

declare dso_local i32 @mthca_table_get(%struct.mthca_dev*, i32, i32) #1

declare dso_local i64 @mthca_alloc_db(%struct.mthca_dev*, i32, i32, i32*) #1

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_alloc_srq_buf(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_srq*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mthca_arbel_init_srq_context(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_srq*, i32) #1

declare dso_local i32 @mthca_tavor_init_srq_context(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_srq*, i32) #1

declare dso_local i32 @mthca_SW2HW_SRQ(%struct.mthca_dev*, %struct.mthca_mailbox*, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @mthca_array_set(i32*, i32, %struct.mthca_srq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_HW2SW_SRQ(%struct.mthca_dev*, %struct.mthca_mailbox*, i32) #1

declare dso_local i32 @mthca_free_srq_buf(%struct.mthca_dev*, %struct.mthca_srq*) #1

declare dso_local i32 @mthca_free_db(%struct.mthca_dev*, i32, i64) #1

declare dso_local i32 @mthca_table_put(%struct.mthca_dev*, i32, i32) #1

declare dso_local i32 @mthca_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
